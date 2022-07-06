<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>onlyone 투어</title>
<link rel="stylesheet" type="text/css" href="../resources/css/adminCss/content.css">
<script src="https://kit.fontawesome.com/27a0dd965d.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css">

	.member_list{
		/* position: absolute;
		left: 58%;
		top: 40%;
		transform:translate(-50%,-50%);
		text-align: center;
		padding: 10px;
		margin-top: 250px; */
		margin-left: 430px;
	}
	
	.member_paging{
		display:flex;
		justify-content: center;
		align-items: center;
		position: absolute;
		left: 55%;
		top: 90%;
		transform:translate(-50%,-50%);
	}
	
	.member_paging a{
		margin-left: 10px;
		text-decoration: none;
		color: white;
		background: #1895A3;
		border-radius: 3px;
		padding: 9px;
		
	}
	
	.member_list button{
		background: none;
		border: 1px solid gray;
		padding: 5px;
		border-radius: 3px;
		cursor: pointer;
		
	}
	
	.first_tr{
		background: #839ACC;
	}
	
	.table_main td{
		border: 1px solid #839ACC;
	}
	
	.total_member{
		margin-bottom: 40px;
		padding: 20px;
		background: #EBE9F3;
		border-radius: 5px;
		color: #807C7C;
		font-weight: bold;
		font-size: 25px;
	}
	
</style>

</head>
<body>

	<%@include file="adminInclude/admin_top.jsp" %>
	<%@include file="adminInclude/admin_aside.jsp" %>

<form method="post" enctype="multipart/form-data"
action="<%=request.getContextPath() %>/travel_insert_ok.do">

	<div id="content_box">
			
		<div class="member_list">
				<c:set var="cont" value="${Cont}"/>

				
				<table cellspacing="0" cellpadding="15" width="1000" class="table_main">

			
				<tr>
				<th rowspan="5" style="width: 300px">
				<input type="file" name="imgfile" multiple="multiple"></th>
				</tr>
				
				<tr class="first_tr">
					<th>번호</th> <th>가격</th> <th>스펙</th>
				</tr>
				
					
				<tr class="second_tr">
				<td><!-- <input name="travel_num"> --> </td>
				<td><input name="travel_price"> </td>
				<td><input name="travel_spec"> </td>
				</tr>
				
				
				
				<tr class="first_tr" >
					<th colspan="3">패키지이름</th>
				</tr>
				<tr class="second_tr">
				<td colspan="3"><input name="travel_name"> </td>
				</tr>
				
				<tr class="first_tr" >
					<th colspan="4">상세정보</th>
				</tr>
				
				<tr>
					<td colspan="4">
					<textarea rows="5" cols="100" name="travel_cont"></textarea>
					</td>
				</tr>
				
					</table>
				
				<table cellspacing="0" cellpadding="15" width="850" class="table_main">
				<tr class="first_tr">
					<th>출발지</th> <th>출국시간</th> <th>도착지</th> <th>도착시간</th>
				</tr>
				
				<tr class="second_tr">
				<td><input name="travel_departure_airport"></td>
				<td><input name="travel_departure_date"></td>
				<td><input name="travel_arrival_airport"></td>
				<td><input name="travel_return_date"></td>
				</tr>
				
				<tr class="first_tr">
					<th>항공사</th> <th>숙소</th> <th>미팅일시</th> <th>미팅장소</th>
				</tr>
				
				<tr class="second_tr">
				<td><input name="travel_air"></td>
				<td><input name="travel_room"></td>
				<td><input name="travel_meeting_time"></td> 
				<td><input name="travel_meeting_loc"></td>
				</tr>
				
				<tr >
					 <th class="first_tr">일정</th> <td class="second_tr"><input name="travel_calender"></td>
					 <th class="first_tr">예약현황</th> <td class="second_tr"><input name="travel_reserve_count"></td>
				</tr>
				
				<tr>
					<td colspan="4" align="center">
					<input type="submit" value="등록" class="btn btn-outline-secondary">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="다시작성" class="btn btn-outline-secondary">
				</tr>
				
				</table>
				</div>
				</div>
				
				</form>

</body>
</html>
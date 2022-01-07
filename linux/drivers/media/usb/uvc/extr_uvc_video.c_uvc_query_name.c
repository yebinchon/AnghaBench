
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *uvc_query_name(u8 query)
{
 switch (query) {
 case 128:
  return "SET_CUR";
 case 135:
  return "GET_CUR";
 case 130:
  return "GET_MIN";
 case 131:
  return "GET_MAX";
 case 129:
  return "GET_RES";
 case 132:
  return "GET_LEN";
 case 133:
  return "GET_INFO";
 case 134:
  return "GET_DEF";
 default:
  return "<invalid>";
 }
}

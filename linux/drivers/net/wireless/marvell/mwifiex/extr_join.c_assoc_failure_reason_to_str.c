
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static const char *assoc_failure_reason_to_str(u16 cap_info)
{
 switch (cap_info) {
 case 130:
  return "CONNECT_ERR_AUTH_ERR_STA_FAILURE";
 case 129:
  return "CONNECT_ERR_AUTH_MSG_UNHANDLED";
 case 131:
  return "CONNECT_ERR_ASSOC_ERR_TIMEOUT";
 case 132:
  return "CONNECT_ERR_ASSOC_ERR_AUTH_REFUSED";
 case 128:
  return "CONNECT_ERR_STA_FAILURE";
 }

 return "Unknown connect failure";
}

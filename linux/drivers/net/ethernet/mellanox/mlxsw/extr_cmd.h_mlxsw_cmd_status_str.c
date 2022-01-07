
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline const char *mlxsw_cmd_status_str(u8 status)
{
 switch (status) {
 case 130:
  return "OK";
 case 131:
  return "INTERNAL_ERR";
 case 138:
  return "BAD_OP";
 case 137:
  return "BAD_PARAM";
 case 133:
  return "BAD_SYS_STATE";
 case 135:
  return "BAD_RESOURCE";
 case 129:
  return "RESOURCE_BUSY";
 case 132:
  return "EXCEED_LIM";
 case 134:
  return "BAD_RES_STATE";
 case 140:
  return "BAD_INDEX";
 case 139:
  return "BAD_NVMEM";
 case 128:
  return "RUNNING_RESET";
 case 136:
  return "BAD_PKT";
 default:
  return "*UNKNOWN*";
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static inline const char *mlxsw_cmd_opcode_str(u16 opcode)
{
 switch (opcode) {
 case 133:
  return "QUERY_FW";
 case 137:
  return "QUERY_BOARDINFO";
 case 138:
  return "QUERY_AQ_CAP";
 case 139:
  return "MAP_FA";
 case 128:
  return "UNMAP_FA";
 case 143:
  return "CONFIG_PROFILE";
 case 144:
  return "ACCESS_REG";
 case 130:
  return "SW2HW_DQ";
 case 141:
  return "HW2SW_DQ";
 case 145:
  return "2ERR_DQ";
 case 135:
  return "QUERY_DQ";
 case 131:
  return "SW2HW_CQ";
 case 142:
  return "HW2SW_CQ";
 case 136:
  return "QUERY_CQ";
 case 129:
  return "SW2HW_EQ";
 case 140:
  return "HW2SW_EQ";
 case 134:
  return "QUERY_EQ";
 case 132:
  return "QUERY_RESOURCES";
 default:
  return "*UNKNOWN*";
 }
}

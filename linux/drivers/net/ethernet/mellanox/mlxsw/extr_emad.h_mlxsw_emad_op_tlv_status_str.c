
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline char *mlxsw_emad_op_tlv_status_str(u8 status)
{
 switch (status) {
 case 130:
  return "operation performed";
 case 137:
  return "device is busy";
 case 128:
  return "version not supported";
 case 129:
  return "unknown TLV";
 case 132:
  return "register not supported";
 case 136:
  return "class not supported";
 case 133:
  return "method not supported";
 case 138:
  return "bad parameter";
 case 131:
  return "resource not available";
 case 134:
  return "acknowledged. retransmit";
 case 135:
  return "internal error";
 default:
  return "*UNKNOWN*";
 }
}

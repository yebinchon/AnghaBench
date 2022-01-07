
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *cmd_status_str(u8 status)
{
 switch (status) {
 case 129:
  return "OK";
 case 133:
  return "internal error";
 case 142:
  return "bad operation";
 case 140:
  return "bad parameter";
 case 134:
  return "bad system state";
 case 137:
  return "bad resource";
 case 128:
  return "resource busy";
 case 131:
  return "limits exceeded";
 case 136:
  return "bad resource state";
 case 132:
  return "bad index";
 case 130:
  return "no resources";
 case 143:
  return "bad input length";
 case 141:
  return "bad output length";
 case 138:
  return "bad QP state";
 case 139:
  return "bad packet (discarded)";
 case 135:
  return "bad size too many outstanding CQEs";
 default:
  return "unknown status";
 }
}

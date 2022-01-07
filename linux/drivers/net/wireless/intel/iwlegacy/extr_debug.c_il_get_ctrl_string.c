
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTROL_ACK ;
 int CONTROL_BACK ;
 int CONTROL_BACK_REQ ;
 int CONTROL_CFEND ;
 int CONTROL_CFENDACK ;
 int CONTROL_CTS ;
 int CONTROL_PSPOLL ;
 int CONTROL_RTS ;
 int IL_CMD (int ) ;

__attribute__((used)) static const char *
il_get_ctrl_string(int cmd)
{
 switch (cmd) {
 IL_CMD(CONTROL_BACK_REQ);
 IL_CMD(CONTROL_BACK);
 IL_CMD(CONTROL_PSPOLL);
 IL_CMD(CONTROL_RTS);
 IL_CMD(CONTROL_CTS);
 IL_CMD(CONTROL_ACK);
 IL_CMD(CONTROL_CFEND);
 IL_CMD(CONTROL_CFENDACK);
 default:
  return "UNKNOWN";

 }
}

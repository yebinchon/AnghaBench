
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CMD_GET_MIB ;
 int CMD_JOIN ;
 int CMD_RADIO_OFF ;
 int CMD_RADIO_ON ;
 int CMD_SCAN ;
 int CMD_SET_MIB ;
 int CMD_STARTUP ;
 int CMD_START_IBSS ;
 int MAKE_CMD_CASE (int ) ;

__attribute__((used)) static const char *at76_get_cmd_string(u8 cmd_status)
{
 switch (cmd_status) {
  MAKE_CMD_CASE(CMD_SET_MIB);
  MAKE_CMD_CASE(CMD_GET_MIB);
  MAKE_CMD_CASE(CMD_SCAN);
  MAKE_CMD_CASE(CMD_JOIN);
  MAKE_CMD_CASE(CMD_START_IBSS);
  MAKE_CMD_CASE(CMD_RADIO_ON);
  MAKE_CMD_CASE(CMD_RADIO_OFF);
  MAKE_CMD_CASE(CMD_STARTUP);
 }

 return "UNKNOWN";
}

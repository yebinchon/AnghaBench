
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HSO_PORT_APP ;
 int HSO_PORT_APP2 ;
 int HSO_PORT_CONTROL ;
 int HSO_PORT_GPS ;
 int HSO_PORT_NO_PORT ;
 int HSO_PORT_PCSC ;

__attribute__((used)) static u32 hso_mux_to_port(int mux)
{
 u32 result;

 switch (mux) {
 case 0x1:
  result = HSO_PORT_CONTROL;
  break;
 case 0x2:
  result = HSO_PORT_APP;
  break;
 case 0x4:
  result = HSO_PORT_PCSC;
  break;
 case 0x8:
  result = HSO_PORT_GPS;
  break;
 case 0x10:
  result = HSO_PORT_APP2;
  break;
 default:
  result = HSO_PORT_NO_PORT;
 }
 return result;
}

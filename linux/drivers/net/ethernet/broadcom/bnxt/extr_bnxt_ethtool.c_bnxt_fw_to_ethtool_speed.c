
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_100000 ;
 int SPEED_20000 ;
 int SPEED_2500 ;
 int SPEED_25000 ;
 int SPEED_40000 ;
 int SPEED_50000 ;
 int SPEED_UNKNOWN ;

u32 bnxt_fw_to_ethtool_speed(u16 fw_link_speed)
{
 switch (fw_link_speed) {
 case 135:
  return SPEED_100;
 case 133:
  return SPEED_1000;
 case 130:
  return SPEED_2500;
 case 134:
  return SPEED_10000;
 case 132:
  return SPEED_20000;
 case 131:
  return SPEED_25000;
 case 129:
  return SPEED_40000;
 case 128:
  return SPEED_50000;
 case 136:
  return SPEED_100000;
 default:
  return SPEED_UNKNOWN;
 }
}

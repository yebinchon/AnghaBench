
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SWMII_SPEED_10 ;
 int SWMII_SPEED_100 ;
 int SWMII_SPEED_1000 ;

__attribute__((used)) static int swphy_decode_speed(int speed)
{
 switch (speed) {
 case 1000:
  return SWMII_SPEED_1000;
 case 100:
  return SWMII_SPEED_100;
 case 10:
  return SWMII_SPEED_10;
 default:
  return -EINVAL;
 }
}

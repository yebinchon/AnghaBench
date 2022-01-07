
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool xgbe_phy_valid_speed_bp_mode(int speed)
{
 switch (speed) {
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}

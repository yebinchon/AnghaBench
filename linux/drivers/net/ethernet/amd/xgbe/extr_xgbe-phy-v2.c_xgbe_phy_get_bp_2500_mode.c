
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;



 int XGBE_MODE_KX_2500 ;
 int XGBE_MODE_UNKNOWN ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_get_bp_2500_mode(int speed)
{
 switch (speed) {
 case 128:
  return XGBE_MODE_KX_2500;
 default:
  return XGBE_MODE_UNKNOWN;
 }
}

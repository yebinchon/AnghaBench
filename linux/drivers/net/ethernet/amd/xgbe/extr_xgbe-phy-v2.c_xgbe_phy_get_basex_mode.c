
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;




 int XGBE_MODE_KR ;
 int XGBE_MODE_UNKNOWN ;
 int XGBE_MODE_X ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_get_basex_mode(struct xgbe_phy_data *phy_data,
           int speed)
{
 switch (speed) {
 case 129:
  return XGBE_MODE_X;
 case 128:
  return XGBE_MODE_KR;
 default:
  return XGBE_MODE_UNKNOWN;
 }
}

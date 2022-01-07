
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 int XGBE_MODE_KX_2500 ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_switch_bp_2500_mode(struct xgbe_prv_data *pdata)
{
 return XGBE_MODE_KX_2500;
}

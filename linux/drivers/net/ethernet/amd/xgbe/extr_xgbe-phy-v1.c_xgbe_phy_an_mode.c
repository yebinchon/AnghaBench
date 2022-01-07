
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_an_mode { ____Placeholder_xgbe_an_mode } xgbe_an_mode ;


 int XGBE_AN_MODE_CL73 ;

__attribute__((used)) static enum xgbe_an_mode xgbe_phy_an_mode(struct xgbe_prv_data *pdata)
{
 return XGBE_AN_MODE_CL73;
}

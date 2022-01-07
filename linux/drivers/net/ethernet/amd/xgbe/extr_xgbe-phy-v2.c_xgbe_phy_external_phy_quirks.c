
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 scalar_t__ xgbe_phy_belfuse_phy_quirks (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_phy_finisar_phy_quirks (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_external_phy_quirks(struct xgbe_prv_data *pdata)
{
 if (xgbe_phy_belfuse_phy_quirks(pdata))
  return;

 if (xgbe_phy_finisar_phy_quirks(pdata))
  return;
}

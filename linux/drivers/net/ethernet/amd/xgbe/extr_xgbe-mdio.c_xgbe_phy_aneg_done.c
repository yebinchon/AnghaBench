
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ an_result; } ;


 scalar_t__ XGBE_AN_COMPLETE ;

__attribute__((used)) static bool xgbe_phy_aneg_done(struct xgbe_prv_data *pdata)
{
 return (pdata->an_result == XGBE_AN_COMPLETE);
}

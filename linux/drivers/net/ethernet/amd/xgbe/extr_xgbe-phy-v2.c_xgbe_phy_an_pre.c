
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_mode; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int cur_mode; } ;




 int XGBE_MODE_KR ;
 int xgbe_phy_cdr_notrack (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_an_pre(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (pdata->an_mode) {
 case 129:
 case 128:
  if (phy_data->cur_mode != XGBE_MODE_KR)
   break;

  xgbe_phy_cdr_notrack(pdata);
  break;
 default:
  break;
 }
}

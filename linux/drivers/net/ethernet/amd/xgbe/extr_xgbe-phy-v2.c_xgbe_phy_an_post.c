
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_mode; int an_result; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int phy_cdr_delay; int cur_mode; } ;






 int XGBE_CDR_DELAY_INC ;
 int XGBE_CDR_DELAY_INIT ;
 int XGBE_CDR_DELAY_MAX ;
 int XGBE_MODE_KR ;
 int xgbe_phy_cdr_track (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_an_post(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (pdata->an_mode) {
 case 130:
 case 129:
  if (phy_data->cur_mode != XGBE_MODE_KR)
   break;

  xgbe_phy_cdr_track(pdata);

  switch (pdata->an_result) {
  case 128:
  case 131:
   break;
  default:
   if (phy_data->phy_cdr_delay < XGBE_CDR_DELAY_MAX)
    phy_data->phy_cdr_delay += XGBE_CDR_DELAY_INC;
   else
    phy_data->phy_cdr_delay = XGBE_CDR_DELAY_INIT;
   break;
  }
  break;
 default:
  break;
 }
}

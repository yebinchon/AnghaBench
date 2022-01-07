
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_mode; } ;






 int xgbe_an37_enable_interrupts (struct xgbe_prv_data*) ;
 int xgbe_an73_enable_interrupts (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an_enable_interrupts(struct xgbe_prv_data *pdata)
{
 switch (pdata->an_mode) {
 case 129:
 case 128:
  xgbe_an73_enable_interrupts(pdata);
  break;
 case 131:
 case 130:
  xgbe_an37_enable_interrupts(pdata);
  break;
 default:
  break;
 }
}

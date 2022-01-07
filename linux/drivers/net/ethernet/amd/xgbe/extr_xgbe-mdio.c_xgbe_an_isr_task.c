
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_mode; int netdev; } ;






 int intr ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_an37_isr (struct xgbe_prv_data*) ;
 int xgbe_an73_isr (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an_isr_task(unsigned long data)
{
 struct xgbe_prv_data *pdata = (struct xgbe_prv_data *)data;

 netif_dbg(pdata, intr, pdata->netdev, "AN interrupt received\n");

 switch (pdata->an_mode) {
 case 129:
 case 128:
  xgbe_an73_isr(pdata);
  break;
 case 131:
 case 130:
  xgbe_an37_isr(pdata);
  break;
 default:
  break;
 }
}

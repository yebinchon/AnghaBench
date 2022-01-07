
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int * channel; } ;


 int xgbe_disable_rx_tx_int (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_disable_rx_tx_ints(struct xgbe_prv_data *pdata)
{
 unsigned int i;

 for (i = 0; i < pdata->channel_count; i++)
  xgbe_disable_rx_tx_int(pdata, pdata->channel[i]);
}

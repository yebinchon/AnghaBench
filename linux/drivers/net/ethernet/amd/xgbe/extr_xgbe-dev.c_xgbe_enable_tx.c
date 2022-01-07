
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int channel_count; unsigned int tx_q_count; TYPE_1__** channel; } ;
struct TYPE_2__ {int tx_ring; } ;


 int DMA_CH_TCR ;
 int MAC_TCR ;
 int MTL_Q_ENABLED ;
 int MTL_Q_TQOMR ;
 int ST ;
 int TE ;
 int TXQEN ;
 int XGMAC_DMA_IOWRITE_BITS (TYPE_1__*,int ,int ,int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,int ) ;

__attribute__((used)) static void xgbe_enable_tx(struct xgbe_prv_data *pdata)
{
 unsigned int i;


 for (i = 0; i < pdata->channel_count; i++) {
  if (!pdata->channel[i]->tx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(pdata->channel[i], DMA_CH_TCR, ST, 1);
 }


 for (i = 0; i < pdata->tx_q_count; i++)
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_TQOMR, TXQEN,
           MTL_Q_ENABLED);


 XGMAC_IOWRITE_BITS(pdata, MAC_TCR, TE, 1);
}

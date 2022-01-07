
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int pbl; unsigned int channel_count; TYPE_1__** channel; } ;
struct TYPE_2__ {scalar_t__ rx_ring; scalar_t__ tx_ring; } ;


 int DMA_CH_CR ;
 int DMA_CH_RCR ;
 int DMA_CH_TCR ;
 unsigned int DMA_PBL_X8_DISABLE ;
 unsigned int DMA_PBL_X8_ENABLE ;
 int PBL ;
 int PBLX8 ;
 int XGMAC_DMA_IOWRITE_BITS (TYPE_1__*,int ,int ,unsigned int) ;

__attribute__((used)) static int xgbe_config_pbl_val(struct xgbe_prv_data *pdata)
{
 unsigned int pblx8, pbl;
 unsigned int i;

 pblx8 = DMA_PBL_X8_DISABLE;
 pbl = pdata->pbl;

 if (pdata->pbl > 32) {
  pblx8 = DMA_PBL_X8_ENABLE;
  pbl >>= 3;
 }

 for (i = 0; i < pdata->channel_count; i++) {
  XGMAC_DMA_IOWRITE_BITS(pdata->channel[i], DMA_CH_CR, PBLX8,
           pblx8);

  if (pdata->channel[i]->tx_ring)
   XGMAC_DMA_IOWRITE_BITS(pdata->channel[i], DMA_CH_TCR,
            PBL, pbl);

  if (pdata->channel[i]->rx_ring)
   XGMAC_DMA_IOWRITE_BITS(pdata->channel[i], DMA_CH_RCR,
            PBL, pbl);
 }

 return 0;
}

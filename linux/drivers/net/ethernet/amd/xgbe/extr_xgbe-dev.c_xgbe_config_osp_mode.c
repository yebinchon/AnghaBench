
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int channel_count; int tx_osp_mode; TYPE_1__** channel; } ;
struct TYPE_2__ {int tx_ring; } ;


 int DMA_CH_TCR ;
 int OSP ;
 int XGMAC_DMA_IOWRITE_BITS (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_config_osp_mode(struct xgbe_prv_data *pdata)
{
 unsigned int i;

 for (i = 0; i < pdata->channel_count; i++) {
  if (!pdata->channel[i]->tx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(pdata->channel[i], DMA_CH_TCR, OSP,
           pdata->tx_osp_mode);
 }

 return 0;
}

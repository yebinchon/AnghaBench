
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int channel_count; TYPE_1__** channel; } ;
struct TYPE_2__ {int rx_ring; } ;


 int DMA_CH_CR ;
 int HDSMS ;
 int MAC_RCR ;
 int SPH ;
 int XGBE_SPH_HDSMS_SIZE ;
 int XGMAC_DMA_IOWRITE_BITS (TYPE_1__*,int ,int ,int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static void xgbe_config_sph_mode(struct xgbe_prv_data *pdata)
{
 unsigned int i;

 for (i = 0; i < pdata->channel_count; i++) {
  if (!pdata->channel[i]->rx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(pdata->channel[i], DMA_CH_CR, SPH, 1);
 }

 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, HDSMS, XGBE_SPH_HDSMS_SIZE);
}

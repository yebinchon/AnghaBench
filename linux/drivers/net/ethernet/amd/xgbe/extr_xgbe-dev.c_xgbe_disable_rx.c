
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int rx_q_count; unsigned int channel_count; TYPE_1__** channel; } ;
struct TYPE_2__ {int rx_ring; } ;


 int ACS ;
 int CST ;
 int DCRCC ;
 int DMA_CH_RCR ;
 int MAC_RCR ;
 int MAC_RQC0R ;
 int RE ;
 int SR ;
 int XGMAC_DMA_IOWRITE_BITS (TYPE_1__*,int ,int ,int ) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int xgbe_prepare_rx_stop (struct xgbe_prv_data*,unsigned int) ;

__attribute__((used)) static void xgbe_disable_rx(struct xgbe_prv_data *pdata)
{
 unsigned int i;


 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, DCRCC, 0);
 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, CST, 0);
 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, ACS, 0);
 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, RE, 0);


 for (i = 0; i < pdata->rx_q_count; i++)
  xgbe_prepare_rx_stop(pdata, i);


 XGMAC_IOWRITE(pdata, MAC_RQC0R, 0);


 for (i = 0; i < pdata->channel_count; i++) {
  if (!pdata->channel[i]->rx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(pdata->channel[i], DMA_CH_RCR, SR, 0);
 }
}

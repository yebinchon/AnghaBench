
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; } ;
struct xgbe_prv_data {unsigned int channel_count; scalar_t__ channel_irq_mode; int per_channel_irq; struct xgbe_channel** channel; TYPE_1__ hw_feat; } ;
struct xgbe_channel {scalar_t__ curr_ier; scalar_t__ rx_ring; scalar_t__ tx_ring; } ;


 int AIE ;
 int AIE20 ;
 int DMA_CH_IER ;
 int DMA_CH_SR ;
 int DMA_MR ;
 int FBEE ;
 int INTM ;
 int MAC_VR ;
 int NIE ;
 int NIE20 ;
 int RBUE ;
 int RIE ;
 int SNPSVER ;
 int TIE ;
 scalar_t__ XGMAC_DMA_IOREAD (struct xgbe_channel*,int ) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,scalar_t__) ;
 unsigned int XGMAC_GET_BITS (int ,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,scalar_t__) ;
 int XGMAC_SET_BITS (scalar_t__,int ,int ,int) ;

__attribute__((used)) static void xgbe_enable_dma_interrupts(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i, ver;


 if (pdata->channel_irq_mode)
  XGMAC_IOWRITE_BITS(pdata, DMA_MR, INTM,
       pdata->channel_irq_mode);

 ver = XGMAC_GET_BITS(pdata->hw_feat.version, MAC_VR, SNPSVER);

 for (i = 0; i < pdata->channel_count; i++) {
  channel = pdata->channel[i];


  XGMAC_DMA_IOWRITE(channel, DMA_CH_SR,
      XGMAC_DMA_IOREAD(channel, DMA_CH_SR));


  channel->curr_ier = 0;






  if (ver < 0x21) {
   XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, NIE20, 1);
   XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, AIE20, 1);
  } else {
   XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, NIE, 1);
   XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, AIE, 1);
  }
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, FBEE, 1);

  if (channel->tx_ring) {





   if (!pdata->per_channel_irq || pdata->channel_irq_mode)
    XGMAC_SET_BITS(channel->curr_ier,
            DMA_CH_IER, TIE, 1);
  }
  if (channel->rx_ring) {






   XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, RBUE, 1);
   if (!pdata->per_channel_irq || pdata->channel_irq_mode)
    XGMAC_SET_BITS(channel->curr_ier,
            DMA_CH_IER, RIE, 1);
  }

  XGMAC_DMA_IOWRITE(channel, DMA_CH_IER, channel->curr_ier);
 }
}

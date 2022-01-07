
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; int per_channel_irq; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {scalar_t__ rx_ring; scalar_t__ tx_ring; } ;


 int DMA_CH_IER ;
 int DMA_CH_IER_AIE_LEN ;
 int DMA_CH_IER_AIE_POS ;
 int DMA_CH_IER_FBEE_LEN ;
 int DMA_CH_IER_FBEE_POS ;
 int DMA_CH_IER_NIE_LEN ;
 int DMA_CH_IER_NIE_POS ;
 int DMA_CH_IER_RBUE_LEN ;
 int DMA_CH_IER_RBUE_POS ;
 int DMA_CH_IER_RIE_LEN ;
 int DMA_CH_IER_RIE_POS ;
 int DMA_CH_IER_TIE_LEN ;
 int DMA_CH_IER_TIE_POS ;
 int DMA_CH_SR ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 unsigned int XLGMAC_SET_REG_BITS (unsigned int,int ,int ,int) ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void xlgmac_enable_dma_interrupts(struct xlgmac_pdata *pdata)
{
 unsigned int dma_ch_isr, dma_ch_ier;
 struct xlgmac_channel *channel;
 unsigned int i;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {

  dma_ch_isr = readl(XLGMAC_DMA_REG(channel, DMA_CH_SR));
  writel(dma_ch_isr, XLGMAC_DMA_REG(channel, DMA_CH_SR));


  dma_ch_ier = 0;






  dma_ch_ier = XLGMAC_SET_REG_BITS(dma_ch_ier,
       DMA_CH_IER_NIE_POS,
     DMA_CH_IER_NIE_LEN, 1);
  dma_ch_ier = XLGMAC_SET_REG_BITS(dma_ch_ier,
       DMA_CH_IER_AIE_POS,
     DMA_CH_IER_AIE_LEN, 1);
  dma_ch_ier = XLGMAC_SET_REG_BITS(dma_ch_ier,
       DMA_CH_IER_FBEE_POS,
     DMA_CH_IER_FBEE_LEN, 1);

  if (channel->tx_ring) {




   if (!pdata->per_channel_irq)
    dma_ch_ier = XLGMAC_SET_REG_BITS(
      dma_ch_ier,
      DMA_CH_IER_TIE_POS,
      DMA_CH_IER_TIE_LEN,
      1);
  }
  if (channel->rx_ring) {





   dma_ch_ier = XLGMAC_SET_REG_BITS(
     dma_ch_ier,
     DMA_CH_IER_RBUE_POS,
     DMA_CH_IER_RBUE_LEN,
     1);
   if (!pdata->per_channel_irq)
    dma_ch_ier = XLGMAC_SET_REG_BITS(
      dma_ch_ier,
      DMA_CH_IER_RIE_POS,
      DMA_CH_IER_RIE_LEN,
      1);
  }

  writel(dma_ch_isr, XLGMAC_DMA_REG(channel, DMA_CH_IER));
 }
}

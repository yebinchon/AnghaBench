
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {unsigned int channel_count; int rx_buf_size; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int rx_ring; } ;


 int DMA_CH_RCR ;
 int DMA_CH_RCR_RBSZ_LEN ;
 int DMA_CH_RCR_RBSZ_POS ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int ) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void xlgmac_config_rx_buffer_size(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;
 u32 regval;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->rx_ring)
   break;

  regval = readl(XLGMAC_DMA_REG(channel, DMA_CH_RCR));
  regval = XLGMAC_SET_REG_BITS(regval, DMA_CH_RCR_RBSZ_POS,
          DMA_CH_RCR_RBSZ_LEN,
     pdata->rx_buf_size);
  writel(regval, XLGMAC_DMA_REG(channel, DMA_CH_RCR));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ tso; } ;
struct xlgmac_pdata {unsigned int channel_count; TYPE_1__ hw_feat; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int tx_ring; } ;


 int DMA_CH_TCR ;
 int DMA_CH_TCR_TSE_LEN ;
 int DMA_CH_TCR_TSE_POS ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void xlgmac_config_tso_mode(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;
 u32 regval;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->tx_ring)
   break;

  if (pdata->hw_feat.tso) {
   regval = readl(XLGMAC_DMA_REG(channel, DMA_CH_TCR));
   regval = XLGMAC_SET_REG_BITS(regval, DMA_CH_TCR_TSE_POS,
           DMA_CH_TCR_TSE_LEN, 1);
   writel(regval, XLGMAC_DMA_REG(channel, DMA_CH_TCR));
  }
 }
}

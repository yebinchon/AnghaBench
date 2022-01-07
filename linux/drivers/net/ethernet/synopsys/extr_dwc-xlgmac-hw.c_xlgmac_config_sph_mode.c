
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {unsigned int channel_count; scalar_t__ mac_regs; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int rx_ring; } ;


 int DMA_CH_CR ;
 int DMA_CH_CR_SPH_LEN ;
 int DMA_CH_CR_SPH_POS ;
 scalar_t__ MAC_RCR ;
 int MAC_RCR_HDSMS_LEN ;
 int MAC_RCR_HDSMS_POS ;
 scalar_t__ XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int XLGMAC_SPH_HDSMS_SIZE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlgmac_config_sph_mode(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;
 u32 regval;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->rx_ring)
   break;

  regval = readl(XLGMAC_DMA_REG(channel, DMA_CH_CR));
  regval = XLGMAC_SET_REG_BITS(regval, DMA_CH_CR_SPH_POS,
          DMA_CH_CR_SPH_LEN, 1);
  writel(regval, XLGMAC_DMA_REG(channel, DMA_CH_CR));
 }

 regval = readl(pdata->mac_regs + MAC_RCR);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_RCR_HDSMS_POS,
         MAC_RCR_HDSMS_LEN,
    XLGMAC_SPH_HDSMS_SIZE);
 writel(regval, pdata->mac_regs + MAC_RCR);
}

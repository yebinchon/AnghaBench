
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {unsigned int channel_count; unsigned int tx_q_count; scalar_t__ mac_regs; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int tx_ring; } ;


 int DMA_CH_TCR ;
 int DMA_CH_TCR_ST_LEN ;
 int DMA_CH_TCR_ST_POS ;
 scalar_t__ MAC_TCR ;
 int MAC_TCR_TE_LEN ;
 int MAC_TCR_TE_POS ;
 int MTL_Q_ENABLED ;
 int MTL_Q_TQOMR ;
 int MTL_Q_TQOMR_TXQEN_LEN ;
 int MTL_Q_TQOMR_TXQEN_POS ;
 scalar_t__ XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 scalar_t__ XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlgmac_enable_tx(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;
 u32 regval;


 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->tx_ring)
   break;

  regval = readl(XLGMAC_DMA_REG(channel, DMA_CH_TCR));
  regval = XLGMAC_SET_REG_BITS(regval, DMA_CH_TCR_ST_POS,
          DMA_CH_TCR_ST_LEN, 1);
  writel(regval, XLGMAC_DMA_REG(channel, DMA_CH_TCR));
 }


 for (i = 0; i < pdata->tx_q_count; i++) {
  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
  regval = XLGMAC_SET_REG_BITS(regval, MTL_Q_TQOMR_TXQEN_POS,
          MTL_Q_TQOMR_TXQEN_LEN,
     MTL_Q_ENABLED);
  writel(regval, XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
 }


 regval = readl(pdata->mac_regs + MAC_TCR);
 regval = XLGMAC_SET_REG_BITS(regval, MAC_TCR_TE_POS,
         MAC_TCR_TE_LEN, 1);
 writel(regval, pdata->mac_regs + MAC_TCR);
}

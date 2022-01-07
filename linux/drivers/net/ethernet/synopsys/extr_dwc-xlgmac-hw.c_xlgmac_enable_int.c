
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_channel {unsigned int saved_ier; } ;
typedef enum xlgmac_int { ____Placeholder_xlgmac_int } xlgmac_int ;


 int DMA_CH_IER ;
 int DMA_CH_IER_FBEE_LEN ;
 int DMA_CH_IER_FBEE_POS ;
 int DMA_CH_IER_RBUE_LEN ;
 int DMA_CH_IER_RBUE_POS ;
 int DMA_CH_IER_RIE_LEN ;
 int DMA_CH_IER_RIE_POS ;
 int DMA_CH_IER_RSE_LEN ;
 int DMA_CH_IER_RSE_POS ;
 int DMA_CH_IER_TBUE_LEN ;
 int DMA_CH_IER_TBUE_POS ;
 int DMA_CH_IER_TIE_LEN ;
 int DMA_CH_IER_TIE_POS ;
 int DMA_CH_IER_TXSE_LEN ;
 int DMA_CH_IER_TXSE_POS ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 unsigned int XLGMAC_SET_REG_BITS (unsigned int,int ,int ,int) ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int xlgmac_enable_int(struct xlgmac_channel *channel,
        enum xlgmac_int int_id)
{
 unsigned int dma_ch_ier;

 dma_ch_ier = readl(XLGMAC_DMA_REG(channel, DMA_CH_IER));

 switch (int_id) {
 case 130:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_TIE_POS,
    DMA_CH_IER_TIE_LEN, 1);
  break;
 case 128:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_TXSE_POS,
    DMA_CH_IER_TXSE_LEN, 1);
  break;
 case 131:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_TBUE_POS,
    DMA_CH_IER_TBUE_LEN, 1);
  break;
 case 133:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_RIE_POS,
    DMA_CH_IER_RIE_LEN, 1);
  break;
 case 134:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_RBUE_POS,
    DMA_CH_IER_RBUE_LEN, 1);
  break;
 case 132:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_RSE_POS,
    DMA_CH_IER_RSE_LEN, 1);
  break;
 case 129:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_TIE_POS,
    DMA_CH_IER_TIE_LEN, 1);
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_RIE_POS,
    DMA_CH_IER_RIE_LEN, 1);
  break;
 case 135:
  dma_ch_ier = XLGMAC_SET_REG_BITS(
    dma_ch_ier, DMA_CH_IER_FBEE_POS,
    DMA_CH_IER_FBEE_LEN, 1);
  break;
 case 136:
  dma_ch_ier |= channel->saved_ier;
  break;
 default:
  return -1;
 }

 writel(dma_ch_ier, XLGMAC_DMA_REG(channel, DMA_CH_IER));

 return 0;
}

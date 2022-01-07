
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_ring {unsigned int cur; unsigned int dma_desc_count; } ;
struct xlgmac_pdata {int dummy; } ;
struct xlgmac_desc_data {int dma_desc_addr; } ;
struct xlgmac_channel {struct xlgmac_ring* rx_ring; struct xlgmac_pdata* pdata; } ;


 int DMA_CH_RDLR_HI ;
 int DMA_CH_RDLR_LO ;
 int DMA_CH_RDRLR ;
 int DMA_CH_RDTR_LO ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 struct xlgmac_desc_data* XLGMAC_GET_DESC_DATA (struct xlgmac_ring*,unsigned int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int writel (int,int ) ;
 int xlgmac_rx_desc_reset (struct xlgmac_pdata*,struct xlgmac_desc_data*,unsigned int) ;

__attribute__((used)) static void xlgmac_rx_desc_init(struct xlgmac_channel *channel)
{
 struct xlgmac_pdata *pdata = channel->pdata;
 struct xlgmac_ring *ring = channel->rx_ring;
 unsigned int start_index = ring->cur;
 struct xlgmac_desc_data *desc_data;
 unsigned int i;


 for (i = 0; i < ring->dma_desc_count; i++) {
  desc_data = XLGMAC_GET_DESC_DATA(ring, i);


  xlgmac_rx_desc_reset(pdata, desc_data, i);
 }


 writel(ring->dma_desc_count - 1, XLGMAC_DMA_REG(channel, DMA_CH_RDRLR));


 desc_data = XLGMAC_GET_DESC_DATA(ring, start_index);
 writel(upper_32_bits(desc_data->dma_desc_addr),
        XLGMAC_DMA_REG(channel, DMA_CH_RDLR_HI));
 writel(lower_32_bits(desc_data->dma_desc_addr),
        XLGMAC_DMA_REG(channel, DMA_CH_RDLR_LO));


 desc_data = XLGMAC_GET_DESC_DATA(ring, start_index +
       ring->dma_desc_count - 1);
 writel(lower_32_bits(desc_data->dma_desc_addr),
        XLGMAC_DMA_REG(channel, DMA_CH_RDTR_LO));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_ring {int cur; int dma_desc_count; } ;
struct xlgmac_desc_data {int dma_desc_addr; } ;
struct xlgmac_channel {struct xlgmac_ring* tx_ring; } ;


 int DMA_CH_TDLR_HI ;
 int DMA_CH_TDLR_LO ;
 int DMA_CH_TDRLR ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 struct xlgmac_desc_data* XLGMAC_GET_DESC_DATA (struct xlgmac_ring*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int writel (int,int ) ;
 int xlgmac_tx_desc_reset (struct xlgmac_desc_data*) ;

__attribute__((used)) static void xlgmac_tx_desc_init(struct xlgmac_channel *channel)
{
 struct xlgmac_ring *ring = channel->tx_ring;
 struct xlgmac_desc_data *desc_data;
 int start_index = ring->cur;
 int i;


 for (i = 0; i < ring->dma_desc_count; i++) {
  desc_data = XLGMAC_GET_DESC_DATA(ring, i);


  xlgmac_tx_desc_reset(desc_data);
 }


 writel(ring->dma_desc_count - 1, XLGMAC_DMA_REG(channel, DMA_CH_TDRLR));


 desc_data = XLGMAC_GET_DESC_DATA(ring, start_index);
 writel(upper_32_bits(desc_data->dma_desc_addr),
        XLGMAC_DMA_REG(channel, DMA_CH_TDLR_HI));
 writel(lower_32_bits(desc_data->dma_desc_addr),
        XLGMAC_DMA_REG(channel, DMA_CH_TDLR_LO));
}

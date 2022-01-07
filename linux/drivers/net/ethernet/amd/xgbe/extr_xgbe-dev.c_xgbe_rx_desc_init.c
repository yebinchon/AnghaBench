
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_data {int rdesc_dma; } ;
struct xgbe_ring {unsigned int cur; unsigned int rdesc_count; } ;
struct xgbe_prv_data {int dummy; } ;
struct xgbe_channel {struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;


 int DBGPR (char*) ;
 int DMA_CH_RDLR_HI ;
 int DMA_CH_RDLR_LO ;
 int DMA_CH_RDRLR ;
 int DMA_CH_RDTR_LO ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,unsigned int) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int xgbe_rx_desc_reset (struct xgbe_prv_data*,struct xgbe_ring_data*,unsigned int) ;

__attribute__((used)) static void xgbe_rx_desc_init(struct xgbe_channel *channel)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_ring *ring = channel->rx_ring;
 struct xgbe_ring_data *rdata;
 unsigned int start_index = ring->cur;
 unsigned int i;

 DBGPR("-->rx_desc_init\n");


 for (i = 0; i < ring->rdesc_count; i++) {
  rdata = XGBE_GET_DESC_DATA(ring, i);


  xgbe_rx_desc_reset(pdata, rdata, i);
 }


 XGMAC_DMA_IOWRITE(channel, DMA_CH_RDRLR, ring->rdesc_count - 1);


 rdata = XGBE_GET_DESC_DATA(ring, start_index);
 XGMAC_DMA_IOWRITE(channel, DMA_CH_RDLR_HI,
     upper_32_bits(rdata->rdesc_dma));
 XGMAC_DMA_IOWRITE(channel, DMA_CH_RDLR_LO,
     lower_32_bits(rdata->rdesc_dma));


 rdata = XGBE_GET_DESC_DATA(ring, start_index + ring->rdesc_count - 1);
 XGMAC_DMA_IOWRITE(channel, DMA_CH_RDTR_LO,
     lower_32_bits(rdata->rdesc_dma));

 DBGPR("<--rx_desc_init\n");
}

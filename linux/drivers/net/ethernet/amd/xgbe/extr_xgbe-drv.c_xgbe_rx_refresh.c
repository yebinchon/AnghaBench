
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_data {int rdesc_dma; } ;
struct xgbe_ring {scalar_t__ dirty; scalar_t__ cur; } ;
struct xgbe_desc_if {scalar_t__ (* map_rx_buffer ) (struct xgbe_prv_data*,struct xgbe_ring*,struct xgbe_ring_data*) ;int (* unmap_rdata ) (struct xgbe_prv_data*,struct xgbe_ring_data*) ;} ;
struct xgbe_hw_if {int (* rx_desc_reset ) (struct xgbe_prv_data*,struct xgbe_ring_data*,scalar_t__) ;} ;
struct xgbe_prv_data {struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;


 int DMA_CH_RDTR_LO ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,scalar_t__) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,int ) ;
 int lower_32_bits (int ) ;
 int stub1 (struct xgbe_prv_data*,struct xgbe_ring_data*) ;
 scalar_t__ stub2 (struct xgbe_prv_data*,struct xgbe_ring*,struct xgbe_ring_data*) ;
 int stub3 (struct xgbe_prv_data*,struct xgbe_ring_data*,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void xgbe_rx_refresh(struct xgbe_channel *channel)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_desc_if *desc_if = &pdata->desc_if;
 struct xgbe_ring *ring = channel->rx_ring;
 struct xgbe_ring_data *rdata;

 while (ring->dirty != ring->cur) {
  rdata = XGBE_GET_DESC_DATA(ring, ring->dirty);


  desc_if->unmap_rdata(pdata, rdata);

  if (desc_if->map_rx_buffer(pdata, ring, rdata))
   break;

  hw_if->rx_desc_reset(pdata, rdata, ring->dirty);

  ring->dirty++;
 }


 wmb();



 rdata = XGBE_GET_DESC_DATA(ring, ring->dirty - 1);
 XGMAC_DMA_IOWRITE(channel, DMA_CH_RDTR_LO,
     lower_32_bits(rdata->rdesc_dma));
}

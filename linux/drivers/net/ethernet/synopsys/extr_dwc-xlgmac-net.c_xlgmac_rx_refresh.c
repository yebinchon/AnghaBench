
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_ring {scalar_t__ dirty; scalar_t__ cur; } ;
struct xlgmac_hw_ops {int (* rx_desc_reset ) (struct xlgmac_pdata*,struct xlgmac_desc_data*,scalar_t__) ;} ;
struct xlgmac_desc_ops {scalar_t__ (* map_rx_buffer ) (struct xlgmac_pdata*,struct xlgmac_ring*,struct xlgmac_desc_data*) ;int (* unmap_desc_data ) (struct xlgmac_pdata*,struct xlgmac_desc_data*) ;} ;
struct xlgmac_pdata {struct xlgmac_hw_ops hw_ops; struct xlgmac_desc_ops desc_ops; } ;
struct xlgmac_desc_data {int dma_desc_addr; } ;
struct xlgmac_channel {struct xlgmac_ring* rx_ring; struct xlgmac_pdata* pdata; } ;


 int DMA_CH_RDTR_LO ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 struct xlgmac_desc_data* XLGMAC_GET_DESC_DATA (struct xlgmac_ring*,scalar_t__) ;
 int lower_32_bits (int ) ;
 int stub1 (struct xlgmac_pdata*,struct xlgmac_desc_data*) ;
 scalar_t__ stub2 (struct xlgmac_pdata*,struct xlgmac_ring*,struct xlgmac_desc_data*) ;
 int stub3 (struct xlgmac_pdata*,struct xlgmac_desc_data*,scalar_t__) ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static void xlgmac_rx_refresh(struct xlgmac_channel *channel)
{
 struct xlgmac_pdata *pdata = channel->pdata;
 struct xlgmac_ring *ring = channel->rx_ring;
 struct xlgmac_desc_data *desc_data;
 struct xlgmac_desc_ops *desc_ops;
 struct xlgmac_hw_ops *hw_ops;

 desc_ops = &pdata->desc_ops;
 hw_ops = &pdata->hw_ops;

 while (ring->dirty != ring->cur) {
  desc_data = XLGMAC_GET_DESC_DATA(ring, ring->dirty);


  desc_ops->unmap_desc_data(pdata, desc_data);

  if (desc_ops->map_rx_buffer(pdata, ring, desc_data))
   break;

  hw_ops->rx_desc_reset(pdata, desc_data, ring->dirty);

  ring->dirty++;
 }


 wmb();




 desc_data = XLGMAC_GET_DESC_DATA(ring, ring->dirty - 1);
 writel(lower_32_bits(desc_data->dma_desc_addr),
        XLGMAC_DMA_REG(channel, DMA_CH_RDTR_LO));
}

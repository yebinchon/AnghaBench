
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_host {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int ,void*) ;
 int shdma_chan_filter ;

__attribute__((used)) static struct dma_chan *
sh_mmcif_request_dma_pdata(struct sh_mmcif_host *host, uintptr_t slave_id)
{
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 if (slave_id <= 0)
  return ((void*)0);

 return dma_request_channel(mask, shdma_chan_filter, (void *)slave_id);
}

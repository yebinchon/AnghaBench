
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_ring {unsigned int dma_desc_count; int desc_data_head; int dma_desc_head_addr; int dma_desc_head; } ;
struct xlgmac_pdata {int netdev; int dev; } ;
struct xlgmac_dma_desc {int dummy; } ;
struct xlgmac_desc_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int drv ;
 int kcalloc (unsigned int,int,int ) ;
 int netif_dbg (struct xlgmac_pdata*,int ,int ,char*,int ,int *,int ) ;

__attribute__((used)) static int xlgmac_init_ring(struct xlgmac_pdata *pdata,
       struct xlgmac_ring *ring,
       unsigned int dma_desc_count)
{
 if (!ring)
  return 0;


 ring->dma_desc_count = dma_desc_count;
 ring->dma_desc_head = dma_alloc_coherent(pdata->dev,
     (sizeof(struct xlgmac_dma_desc) *
      dma_desc_count),
     &ring->dma_desc_head_addr,
     GFP_KERNEL);
 if (!ring->dma_desc_head)
  return -ENOMEM;


 ring->desc_data_head = kcalloc(dma_desc_count,
     sizeof(struct xlgmac_desc_data),
     GFP_KERNEL);
 if (!ring->desc_data_head)
  return -ENOMEM;

 netif_dbg(pdata, drv, pdata->netdev,
    "dma_desc_head=%p, dma_desc_head_addr=%pad, desc_data_head=%p\n",
  ring->dma_desc_head,
  &ring->dma_desc_head_addr,
  ring->desc_data_head);

 return 0;
}

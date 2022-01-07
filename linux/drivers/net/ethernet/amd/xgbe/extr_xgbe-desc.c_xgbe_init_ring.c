
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_desc {int dummy; } ;
struct xgbe_ring_data {int dummy; } ;
struct xgbe_ring {unsigned int rdesc_count; int node; int rdata; int rdesc_dma; int rdesc; } ;
struct xgbe_prv_data {int netdev; int dev; } ;


 int ENOMEM ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,int ,int *,int ,int ) ;
 int xgbe_alloc_node (size_t,int ) ;
 int xgbe_dma_alloc_node (int ,size_t,int *,int ) ;

__attribute__((used)) static int xgbe_init_ring(struct xgbe_prv_data *pdata,
     struct xgbe_ring *ring, unsigned int rdesc_count)
{
 size_t size;

 if (!ring)
  return 0;


 size = rdesc_count * sizeof(struct xgbe_ring_desc);

 ring->rdesc_count = rdesc_count;
 ring->rdesc = xgbe_dma_alloc_node(pdata->dev, size, &ring->rdesc_dma,
       ring->node);
 if (!ring->rdesc)
  return -ENOMEM;


 size = rdesc_count * sizeof(struct xgbe_ring_data);

 ring->rdata = xgbe_alloc_node(size, ring->node);
 if (!ring->rdata)
  return -ENOMEM;

 netif_dbg(pdata, drv, pdata->netdev,
    "rdesc=%p, rdesc_dma=%pad, rdata=%p, node=%d\n",
    ring->rdesc, &ring->rdesc_dma, ring->rdata, ring->node);

 return 0;
}

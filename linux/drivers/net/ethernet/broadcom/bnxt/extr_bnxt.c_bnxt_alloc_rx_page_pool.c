
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_pool_params {int dma_dir; int * dev; int nid; int pool_size; int member_0; } ;
struct bnxt_rx_ring_info {int * page_pool; } ;
struct bnxt {TYPE_1__* pdev; int rx_ring_size; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_to_node (int *) ;
 int * page_pool_create (struct page_pool_params*) ;

__attribute__((used)) static int bnxt_alloc_rx_page_pool(struct bnxt *bp,
       struct bnxt_rx_ring_info *rxr)
{
 struct page_pool_params pp = { 0 };

 pp.pool_size = bp->rx_ring_size;
 pp.nid = dev_to_node(&bp->pdev->dev);
 pp.dev = &bp->pdev->dev;
 pp.dma_dir = DMA_BIDIRECTIONAL;

 rxr->page_pool = page_pool_create(&pp);
 if (IS_ERR(rxr->page_pool)) {
  int err = PTR_ERR(rxr->page_pool);

  rxr->page_pool = ((void*)0);
  return err;
 }
 return 0;
}

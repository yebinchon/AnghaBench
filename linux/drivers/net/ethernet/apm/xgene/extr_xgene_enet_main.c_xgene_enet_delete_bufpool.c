
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_raw_desc16 {int m1; } ;
struct xgene_enet_desc_ring {int slots; struct xgene_enet_raw_desc16* raw_desc16; scalar_t__* rx_skb; int ndev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DATAADDR ;
 int DMA_FROM_DEVICE ;
 int GET_VAL (int ,int ) ;
 int XGENE_ENET_MAX_MTU ;
 int dev_kfree_skb_any (scalar_t__) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int le64_to_cpu (int ) ;
 struct device* ndev_to_dev (int ) ;

__attribute__((used)) static void xgene_enet_delete_bufpool(struct xgene_enet_desc_ring *buf_pool)
{
 struct device *dev = ndev_to_dev(buf_pool->ndev);
 struct xgene_enet_raw_desc16 *raw_desc;
 dma_addr_t dma_addr;
 int i;


 for (i = 0; i < buf_pool->slots; i++) {
  if (buf_pool->rx_skb[i]) {
   dev_kfree_skb_any(buf_pool->rx_skb[i]);

   raw_desc = &buf_pool->raw_desc16[i];
   dma_addr = GET_VAL(DATAADDR, le64_to_cpu(raw_desc->m1));
   dma_unmap_single(dev, dma_addr, XGENE_ENET_MAX_MTU,
      DMA_FROM_DEVICE);
  }
 }
}

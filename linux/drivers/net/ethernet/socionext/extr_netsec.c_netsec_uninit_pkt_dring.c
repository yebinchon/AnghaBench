
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct page {int dummy; } ;
struct netsec_priv {int ndev; int dev; struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {scalar_t__ tail; scalar_t__ head; struct netsec_desc* vaddr; struct netsec_desc* desc; int page_pool; int xdp_rxq; } ;
struct netsec_desc {int skb; int len; int dma_addr; int addr; } ;


 size_t DESC_NUM ;
 size_t DESC_SZ ;
 int DMA_TO_DEVICE ;
 int NETSEC_RING_RX ;
 int NETSEC_RING_TX ;
 int dev_kfree_skb (int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int memset (struct netsec_desc*,int ,size_t) ;
 int netdev_reset_queue (int ) ;
 int page_pool_destroy (int ) ;
 int page_pool_put_page (int ,struct page*,int) ;
 struct page* virt_to_page (int ) ;
 scalar_t__ xdp_rxq_info_is_reg (int *) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static void netsec_uninit_pkt_dring(struct netsec_priv *priv, int id)
{
 struct netsec_desc_ring *dring = &priv->desc_ring[id];
 struct netsec_desc *desc;
 u16 idx;

 if (!dring->vaddr || !dring->desc)
  return;
 for (idx = 0; idx < DESC_NUM; idx++) {
  desc = &dring->desc[idx];
  if (!desc->addr)
   continue;

  if (id == NETSEC_RING_RX) {
   struct page *page = virt_to_page(desc->addr);

   page_pool_put_page(dring->page_pool, page, 0);
  } else if (id == NETSEC_RING_TX) {
   dma_unmap_single(priv->dev, desc->dma_addr, desc->len,
      DMA_TO_DEVICE);
   dev_kfree_skb(desc->skb);
  }
 }


 if (id == NETSEC_RING_RX) {
  if (xdp_rxq_info_is_reg(&dring->xdp_rxq))
   xdp_rxq_info_unreg(&dring->xdp_rxq);
  page_pool_destroy(dring->page_pool);
 }

 memset(dring->desc, 0, sizeof(struct netsec_desc) * DESC_NUM);
 memset(dring->vaddr, 0, DESC_SZ * DESC_NUM);

 dring->head = 0;
 dring->tail = 0;

 if (id == NETSEC_RING_TX)
  netdev_reset_queue(priv->ndev);
}

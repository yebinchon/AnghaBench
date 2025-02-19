
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct skb_shared_info {size_t nr_frags; int * frags; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct bnx2_sw_pg {struct page* page; } ;
struct bnx2_rx_ring_info {size_t rx_pg_cons; size_t rx_pg_prod; struct bnx2_rx_bd** rx_pg_desc_ring; struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2_rx_bd {int rx_bd_haddr_lo; int rx_bd_haddr_hi; } ;
struct bnx2 {int dummy; } ;


 size_t BNX2_NEXT_RX_BD (size_t) ;
 size_t BNX2_RX_IDX (size_t) ;
 size_t BNX2_RX_PG_RING_IDX (size_t) ;
 size_t BNX2_RX_RING (size_t) ;
 int __skb_frag_set_page (int *,int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_addr (struct bnx2_sw_pg*,int ) ;
 int dma_unmap_addr_set (struct bnx2_sw_pg*,int ,int ) ;
 int mapping ;
 struct page* skb_frag_page (int *) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void
bnx2_reuse_rx_skb_pages(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr,
   struct sk_buff *skb, int count)
{
 struct bnx2_sw_pg *cons_rx_pg, *prod_rx_pg;
 struct bnx2_rx_bd *cons_bd, *prod_bd;
 int i;
 u16 hw_prod, prod;
 u16 cons = rxr->rx_pg_cons;

 cons_rx_pg = &rxr->rx_pg_ring[cons];





 if (skb) {
  struct page *page;
  struct skb_shared_info *shinfo;

  shinfo = skb_shinfo(skb);
  shinfo->nr_frags--;
  page = skb_frag_page(&shinfo->frags[shinfo->nr_frags]);
  __skb_frag_set_page(&shinfo->frags[shinfo->nr_frags], ((void*)0));

  cons_rx_pg->page = page;
  dev_kfree_skb(skb);
 }

 hw_prod = rxr->rx_pg_prod;

 for (i = 0; i < count; i++) {
  prod = BNX2_RX_PG_RING_IDX(hw_prod);

  prod_rx_pg = &rxr->rx_pg_ring[prod];
  cons_rx_pg = &rxr->rx_pg_ring[cons];
  cons_bd = &rxr->rx_pg_desc_ring[BNX2_RX_RING(cons)]
      [BNX2_RX_IDX(cons)];
  prod_bd = &rxr->rx_pg_desc_ring[BNX2_RX_RING(prod)]
      [BNX2_RX_IDX(prod)];

  if (prod != cons) {
   prod_rx_pg->page = cons_rx_pg->page;
   cons_rx_pg->page = ((void*)0);
   dma_unmap_addr_set(prod_rx_pg, mapping,
    dma_unmap_addr(cons_rx_pg, mapping));

   prod_bd->rx_bd_haddr_hi = cons_bd->rx_bd_haddr_hi;
   prod_bd->rx_bd_haddr_lo = cons_bd->rx_bd_haddr_lo;

  }
  cons = BNX2_RX_PG_RING_IDX(BNX2_NEXT_RX_BD(cons));
  hw_prod = BNX2_NEXT_RX_BD(hw_prod);
 }
 rxr->rx_pg_prod = hw_prod;
 rxr->rx_pg_cons = cons;
}

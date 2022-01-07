
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_rx_unmap_q {int type; struct bnad_rx_unmap* unmap; } ;
struct bnad_rx_unmap {int dummy; } ;
struct bnad {int dummy; } ;
struct bna_rcb {int q_depth; struct bnad_rx_unmap_q* unmap_q; } ;


 scalar_t__ BNAD_RXBUF_IS_SK_BUFF (int ) ;
 int bnad_rxq_alloc_uninit (struct bnad*,struct bna_rcb*) ;
 int bnad_rxq_cleanup_page (struct bnad*,struct bnad_rx_unmap*) ;
 int bnad_rxq_cleanup_skb (struct bnad*,struct bnad_rx_unmap*) ;

__attribute__((used)) static void
bnad_rxq_cleanup(struct bnad *bnad, struct bna_rcb *rcb)
{
 struct bnad_rx_unmap_q *unmap_q = rcb->unmap_q;
 int i;

 for (i = 0; i < rcb->q_depth; i++) {
  struct bnad_rx_unmap *unmap = &unmap_q->unmap[i];

  if (BNAD_RXBUF_IS_SK_BUFF(unmap_q->type))
   bnad_rxq_cleanup_skb(bnad, unmap);
  else
   bnad_rxq_cleanup_page(bnad, unmap);
 }
 bnad_rxq_alloc_uninit(bnad, rcb);
}

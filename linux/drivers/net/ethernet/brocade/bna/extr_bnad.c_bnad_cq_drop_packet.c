
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnad_rx_unmap_q {int type; struct bnad_rx_unmap* unmap; } ;
struct bnad_rx_unmap {int dummy; } ;
struct bnad {int dummy; } ;
struct bna_rcb {int q_depth; struct bnad_rx_unmap_q* unmap_q; } ;


 scalar_t__ BNAD_RXBUF_IS_SK_BUFF (int ) ;
 int BNA_QE_INDX_INC (scalar_t__,int ) ;
 int bnad_rxq_cleanup_page (struct bnad*,struct bnad_rx_unmap*) ;
 int bnad_rxq_cleanup_skb (struct bnad*,struct bnad_rx_unmap*) ;

__attribute__((used)) static void
bnad_cq_drop_packet(struct bnad *bnad, struct bna_rcb *rcb,
      u32 sop_ci, u32 nvecs)
{
 struct bnad_rx_unmap_q *unmap_q;
 struct bnad_rx_unmap *unmap;
 u32 ci, vec;

 unmap_q = rcb->unmap_q;
 for (vec = 0, ci = sop_ci; vec < nvecs; vec++) {
  unmap = &unmap_q->unmap[ci];
  BNA_QE_INDX_INC(ci, rcb->q_depth);

  if (BNAD_RXBUF_IS_SK_BUFF(unmap_q->type))
   bnad_rxq_cleanup_skb(bnad, unmap);
  else
   bnad_rxq_cleanup_page(bnad, unmap);
 }
}

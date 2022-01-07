
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {unsigned int priority; int destructor; int dev; scalar_t__ head; scalar_t__ data; } ;
struct sge_txq {size_t pidx; int size; TYPE_1__* sdesc; int * desc; scalar_t__ stat; } ;
struct TYPE_7__ {int lock; } ;
struct sge_uld_txq {int service_ofldq_running; struct sge_txq q; TYPE_3__* adap; TYPE_2__ sendq; int full; } ;
struct fw_wr_hdr {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int * port; int pdev_dev; } ;
struct TYPE_6__ {struct sk_buff* skb; } ;


 int BUG_ON (int) ;
 int TXQ_STOP_THRES ;
 int __skb_unlink (struct sk_buff*,TYPE_2__*) ;
 int cxgb4_inline_tx_skb (struct sk_buff*,struct sge_txq*,int *) ;
 scalar_t__ cxgb4_map_skb (int ,struct sk_buff*,int *) ;
 int cxgb4_reclaim_completed_tx (TYPE_3__*,struct sge_txq*,int) ;
 int cxgb4_ring_tx_db (TYPE_3__*,struct sge_txq*,unsigned int) ;
 int cxgb4_write_sgl (struct sk_buff*,struct sge_txq*,void*,int *,int,int *) ;
 int deferred_unmap_destructor ;
 unsigned int flits_to_desc (unsigned int) ;
 scalar_t__ inline_tx_skb_header (struct sk_buff*,struct sge_txq*,void*,int) ;
 scalar_t__ is_ofld_imm (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (unsigned int) ;
 int ofldtxq_stop (struct sge_uld_txq*,struct fw_wr_hdr*) ;
 struct sk_buff* skb_peek (TYPE_2__*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txq_advance (struct sge_txq*,unsigned int) ;
 unsigned int txq_avail (struct sge_txq*) ;
 int txq_stop_maperr (struct sge_uld_txq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void service_ofldq(struct sge_uld_txq *q)
{
 u64 *pos, *before, *end;
 int credits;
 struct sk_buff *skb;
 struct sge_txq *txq;
 unsigned int left;
 unsigned int written = 0;
 unsigned int flits, ndesc;







 if (q->service_ofldq_running)
  return;
 q->service_ofldq_running = 1;

 while ((skb = skb_peek(&q->sendq)) != ((void*)0) && !q->full) {







  spin_unlock(&q->sendq.lock);

  cxgb4_reclaim_completed_tx(q->adap, &q->q, 0);

  flits = skb->priority;
  ndesc = flits_to_desc(flits);
  credits = txq_avail(&q->q) - ndesc;
  BUG_ON(credits < 0);
  if (unlikely(credits < TXQ_STOP_THRES))
   ofldtxq_stop(q, (struct fw_wr_hdr *)skb->data);

  pos = (u64 *)&q->q.desc[q->q.pidx];
  if (is_ofld_imm(skb))
   cxgb4_inline_tx_skb(skb, &q->q, pos);
  else if (cxgb4_map_skb(q->adap->pdev_dev, skb,
           (dma_addr_t *)skb->head)) {
   txq_stop_maperr(q);
   spin_lock(&q->sendq.lock);
   break;
  } else {
   int last_desc, hdr_len = skb_transport_offset(skb);




   before = (u64 *)pos;
   end = (u64 *)pos + flits;
   txq = &q->q;
   pos = (void *)inline_tx_skb_header(skb, &q->q,
          (void *)pos,
          hdr_len);
   if (before > (u64 *)pos) {
    left = (u8 *)end - (u8 *)txq->stat;
    end = (void *)txq->desc + left;
   }





   if (pos == (u64 *)txq->stat) {
    left = (u8 *)end - (u8 *)txq->stat;
    end = (void *)txq->desc + left;
    pos = (void *)txq->desc;
   }

   cxgb4_write_sgl(skb, &q->q, (void *)pos,
     end, hdr_len,
     (dma_addr_t *)skb->head);




   last_desc = q->q.pidx + ndesc - 1;
   if (last_desc >= q->q.size)
    last_desc -= q->q.size;
   q->q.sdesc[last_desc].skb = skb;
  }

  txq_advance(&q->q, ndesc);
  written += ndesc;
  if (unlikely(written > 32)) {
   cxgb4_ring_tx_db(q->adap, &q->q, written);
   written = 0;
  }






  spin_lock(&q->sendq.lock);
  __skb_unlink(skb, &q->sendq);
  if (is_ofld_imm(skb))
   kfree_skb(skb);
 }
 if (likely(written))
  cxgb4_ring_tx_db(q->adap, &q->q, written);




 q->service_ofldq_running = 0;
}

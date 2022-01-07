
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int priority; scalar_t__ head; } ;
struct sge_txq {unsigned int gen; unsigned int in_use; unsigned int pidx; unsigned int size; int lock; } ;
struct adapter {int pdev; } ;
typedef int dma_addr_t ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 int TXQ_OFLD ;
 int TX_RECLAIM_CHUNK ;
 unsigned int calc_tx_descs_ofld (struct sk_buff*) ;
 int check_desc_avail (struct adapter*,struct sge_txq*,struct sk_buff*,unsigned int,int ) ;
 int check_ring_tx_db (struct adapter*,struct sge_txq*) ;
 int immediate (struct sk_buff*) ;
 scalar_t__ map_skb (int ,struct sk_buff*,int *) ;
 int reclaim_completed_tx (struct adapter*,struct sge_txq*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int write_ofld_wr (struct adapter*,struct sk_buff*,struct sge_txq*,unsigned int,unsigned int,unsigned int,int *) ;

__attribute__((used)) static int ofld_xmit(struct adapter *adap, struct sge_txq *q,
       struct sk_buff *skb)
{
 int ret;
 unsigned int ndesc = calc_tx_descs_ofld(skb), pidx, gen;

 spin_lock(&q->lock);
again: reclaim_completed_tx(adap, q, TX_RECLAIM_CHUNK);

 ret = check_desc_avail(adap, q, skb, ndesc, TXQ_OFLD);
 if (unlikely(ret)) {
  if (ret == 1) {
   skb->priority = ndesc;
   spin_unlock(&q->lock);
   return NET_XMIT_CN;
  }
  goto again;
 }

 if (!immediate(skb) &&
     map_skb(adap->pdev, skb, (dma_addr_t *)skb->head)) {
  spin_unlock(&q->lock);
  return NET_XMIT_SUCCESS;
 }

 gen = q->gen;
 q->in_use += ndesc;
 pidx = q->pidx;
 q->pidx += ndesc;
 if (q->pidx >= q->size) {
  q->pidx -= q->size;
  q->gen ^= 1;
 }
 spin_unlock(&q->lock);

 write_ofld_wr(adap, skb, q, pidx, gen, ndesc, (dma_addr_t *)skb->head);
 check_ring_tx_db(adap, q);
 return NET_XMIT_SUCCESS;
}

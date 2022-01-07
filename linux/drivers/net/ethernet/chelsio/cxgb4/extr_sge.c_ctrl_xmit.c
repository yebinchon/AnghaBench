
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tx_desc {int dummy; } ;
struct sk_buff {unsigned int priority; int len; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {size_t pidx; int * desc; } ;
struct sge_ctrl_txq {int full; TYPE_5__ sendq; TYPE_1__ q; int adap; } ;
struct fw_wr_hdr {int dummy; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 int NET_XMIT_CN ;
 int NET_XMIT_DROP ;
 int NET_XMIT_SUCCESS ;
 scalar_t__ TXQ_STOP_THRES ;
 int WARN_ON (int) ;
 int __skb_queue_tail (TYPE_5__*,struct sk_buff*) ;
 int ctrlq_check_stop (struct sge_ctrl_txq*,struct fw_wr_hdr*) ;
 int cxgb4_inline_tx_skb (struct sk_buff*,TYPE_1__*,struct fw_wr_hdr*) ;
 int cxgb4_ring_tx_db (int ,TYPE_1__*,unsigned int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int is_imm (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txq_advance (TYPE_1__*,unsigned int) ;
 scalar_t__ txq_avail (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ctrl_xmit(struct sge_ctrl_txq *q, struct sk_buff *skb)
{
 unsigned int ndesc;
 struct fw_wr_hdr *wr;

 if (unlikely(!is_imm(skb))) {
  WARN_ON(1);
  dev_kfree_skb(skb);
  return NET_XMIT_DROP;
 }

 ndesc = DIV_ROUND_UP(skb->len, sizeof(struct tx_desc));
 spin_lock(&q->sendq.lock);

 if (unlikely(q->full)) {
  skb->priority = ndesc;
  __skb_queue_tail(&q->sendq, skb);
  spin_unlock(&q->sendq.lock);
  return NET_XMIT_CN;
 }

 wr = (struct fw_wr_hdr *)&q->q.desc[q->q.pidx];
 cxgb4_inline_tx_skb(skb, &q->q, wr);

 txq_advance(&q->q, ndesc);
 if (unlikely(txq_avail(&q->q) < TXQ_STOP_THRES))
  ctrlq_check_stop(q, wr);

 cxgb4_ring_tx_db(q->adap, &q->q, ndesc);
 spin_unlock(&q->sendq.lock);

 kfree_skb(skb);
 return NET_XMIT_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int priority; } ;
struct TYPE_2__ {int qlen; int lock; } ;
struct sge_uld_txq {TYPE_1__ sendq; } ;


 int NET_XMIT_SUCCESS ;
 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int calc_tx_flits_ofld (struct sk_buff*) ;
 int service_ofldq (struct sge_uld_txq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ofld_xmit(struct sge_uld_txq *q, struct sk_buff *skb)
{
 skb->priority = calc_tx_flits_ofld(skb);
 spin_lock(&q->sendq.lock);
 __skb_queue_tail(&q->sendq, skb);
 if (q->sendq.qlen == 1)
  service_ofldq(q);

 spin_unlock(&q->sendq.lock);
 return NET_XMIT_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pktq {scalar_t__ len; int hi_prec; TYPE_1__* q; } ;
struct TYPE_2__ {int skblist; } ;


 struct sk_buff* skb_peek_tail (int *) ;
 int skb_queue_empty (int *) ;

struct sk_buff *brcmu_pktq_peek_tail(struct pktq *pq, int *prec_out)
{
 int prec;

 if (pq->len == 0)
  return ((void*)0);

 for (prec = 0; prec < pq->hi_prec; prec++)
  if (!skb_queue_empty(&pq->q[prec].skblist))
   break;

 if (prec_out)
  *prec_out = prec;

 return skb_peek_tail(&pq->q[prec].skblist);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int queue_mapping; } ;
struct alx_tx_queue {int dummy; } ;
struct alx_priv {unsigned int num_txq; TYPE_1__** qnapi; } ;
struct TYPE_2__ {struct alx_tx_queue* txq; } ;



__attribute__((used)) static struct alx_tx_queue *alx_tx_queue_mapping(struct alx_priv *alx,
       struct sk_buff *skb)
{
 unsigned int r_idx = skb->queue_mapping;

 if (r_idx >= alx->num_txq)
  r_idx = r_idx % alx->num_txq;

 return alx->qnapi[r_idx]->txq;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct ionic_tx_stats {int linearize; } ;
struct ionic_queue {int dummy; } ;
struct TYPE_2__ {int gso_size; scalar_t__ nr_frags; } ;


 scalar_t__ IONIC_TX_MAX_SG_ELEMS ;
 struct ionic_tx_stats* q_to_tx_stats (struct ionic_queue*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_linearize (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int ionic_tx_descs_needed(struct ionic_queue *q, struct sk_buff *skb)
{
 struct ionic_tx_stats *stats = q_to_tx_stats(q);
 int err;


 if (skb_is_gso(skb))
  return (skb->len / skb_shinfo(skb)->gso_size) + 1;


 if (skb_shinfo(skb)->nr_frags <= IONIC_TX_MAX_SG_ELEMS)
  return 1;


 err = skb_linearize(skb);
 if (err)
  return err;

 stats->linearize++;


 return 1;
}

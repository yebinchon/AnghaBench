
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; } ;
struct ionic_tx_stats {int bytes; int pkts; } ;
struct ionic_queue {int dummy; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ionic_tx_calc_csum (struct ionic_queue*,struct sk_buff*) ;
 int ionic_tx_calc_no_csum (struct ionic_queue*,struct sk_buff*) ;
 int ionic_tx_clean ;
 int ionic_tx_skb_frags (struct ionic_queue*,struct sk_buff*) ;
 int ionic_txq_post (struct ionic_queue*,int,int ,struct sk_buff*) ;
 int netdev_tx_sent_queue (int ,scalar_t__) ;
 int netdev_xmit_more () ;
 int q_to_ndq (struct ionic_queue*) ;
 struct ionic_tx_stats* q_to_tx_stats (struct ionic_queue*) ;
 int skb_tx_timestamp (struct sk_buff*) ;

__attribute__((used)) static int ionic_tx(struct ionic_queue *q, struct sk_buff *skb)
{
 struct ionic_tx_stats *stats = q_to_tx_stats(q);
 int err;


 if (skb->ip_summed == CHECKSUM_PARTIAL)
  err = ionic_tx_calc_csum(q, skb);
 else
  err = ionic_tx_calc_no_csum(q, skb);
 if (err)
  return err;


 err = ionic_tx_skb_frags(q, skb);
 if (err)
  return err;

 skb_tx_timestamp(skb);
 stats->pkts++;
 stats->bytes += skb->len;

 netdev_tx_sent_queue(q_to_ndq(q), skb->len);
 ionic_txq_post(q, !netdev_xmit_more(), ionic_tx_clean, skb);

 return 0;
}

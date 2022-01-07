
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ionic_queue {int drop; int stop; } ;
struct ionic_lif {int state; } ;
typedef int netdev_tx_t ;


 int IONIC_LIF_UP ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ionic_maybe_stop_tx (struct ionic_queue*,int) ;
 int ionic_tx (struct ionic_queue*,struct sk_buff*) ;
 int ionic_tx_descs_needed (struct ionic_queue*,struct sk_buff*) ;
 int ionic_tx_tso (struct ionic_queue*,struct sk_buff*) ;
 struct ionic_queue* lif_to_txq (struct ionic_lif*,scalar_t__) ;
 int lif_to_txqcq (struct ionic_lif*,scalar_t__) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;
 scalar_t__ skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int test_bit (int ,int ) ;
 scalar_t__ unlikely (int) ;

netdev_tx_t ionic_start_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 u16 queue_index = skb_get_queue_mapping(skb);
 struct ionic_lif *lif = netdev_priv(netdev);
 struct ionic_queue *q;
 int ndescs;
 int err;

 if (unlikely(!test_bit(IONIC_LIF_UP, lif->state))) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 if (unlikely(!lif_to_txqcq(lif, queue_index)))
  queue_index = 0;
 q = lif_to_txq(lif, queue_index);

 ndescs = ionic_tx_descs_needed(q, skb);
 if (ndescs < 0)
  goto err_out_drop;

 if (unlikely(ionic_maybe_stop_tx(q, ndescs)))
  return NETDEV_TX_BUSY;

 if (skb_is_gso(skb))
  err = ionic_tx_tso(q, skb);
 else
  err = ionic_tx(q, skb);

 if (err)
  goto err_out_drop;





 ionic_maybe_stop_tx(q, 4);

 return NETDEV_TX_OK;

err_out_drop:
 q->stop++;
 q->drop++;
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}

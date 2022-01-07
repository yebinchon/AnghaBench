
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pkt_info {int tx_bytes; int desc_count; } ;
struct xlgmac_ring {struct xlgmac_pkt_info pkt_info; } ;
struct xlgmac_hw_ops {int (* dev_xmit ) (struct xlgmac_channel*) ;} ;
struct xlgmac_desc_ops {int (* map_tx_skb ) (struct xlgmac_channel*,struct sk_buff*) ;} ;
struct xlgmac_pdata {struct xlgmac_channel* channel_head; struct xlgmac_hw_ops hw_ops; struct xlgmac_desc_ops desc_ops; } ;
struct xlgmac_channel {struct xlgmac_ring* tx_ring; int queue_index; } ;
struct sk_buff {scalar_t__ len; int queue_mapping; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 int NETDEV_TX_OK ;
 int XLGMAC_PR (char*,scalar_t__) ;
 int XLGMAC_TX_MAX_DESC_NR ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memset (struct xlgmac_pkt_info*,int ,int) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int netdev_tx_sent_queue (struct netdev_queue*,int ) ;
 int netif_err (struct xlgmac_pdata*,int ,struct net_device*,char*) ;
 scalar_t__ netif_msg_pktdata (struct xlgmac_pdata*) ;
 int stub1 (struct xlgmac_channel*,struct sk_buff*) ;
 int stub2 (struct xlgmac_channel*) ;
 int tx_err ;
 int xlgmac_maybe_stop_tx_queue (struct xlgmac_channel*,struct xlgmac_ring*,int ) ;
 int xlgmac_prep_tso (struct sk_buff*,struct xlgmac_pkt_info*) ;
 int xlgmac_prep_tx_pkt (struct xlgmac_pdata*,struct xlgmac_ring*,struct sk_buff*,struct xlgmac_pkt_info*) ;
 int xlgmac_prep_vlan (struct sk_buff*,struct xlgmac_pkt_info*) ;
 int xlgmac_print_pkt (struct net_device*,struct sk_buff*,int) ;

__attribute__((used)) static int xlgmac_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 struct xlgmac_pkt_info *tx_pkt_info;
 struct xlgmac_desc_ops *desc_ops;
 struct xlgmac_channel *channel;
 struct xlgmac_hw_ops *hw_ops;
 struct netdev_queue *txq;
 struct xlgmac_ring *ring;
 int ret;

 desc_ops = &pdata->desc_ops;
 hw_ops = &pdata->hw_ops;

 XLGMAC_PR("skb->len = %d\n", skb->len);

 channel = pdata->channel_head + skb->queue_mapping;
 txq = netdev_get_tx_queue(netdev, channel->queue_index);
 ring = channel->tx_ring;
 tx_pkt_info = &ring->pkt_info;

 if (skb->len == 0) {
  netif_err(pdata, tx_err, netdev,
     "empty skb received from stack\n");
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }


 memset(tx_pkt_info, 0, sizeof(*tx_pkt_info));
 xlgmac_prep_tx_pkt(pdata, ring, skb, tx_pkt_info);


 ret = xlgmac_maybe_stop_tx_queue(channel, ring,
      tx_pkt_info->desc_count);
 if (ret)
  return ret;

 ret = xlgmac_prep_tso(skb, tx_pkt_info);
 if (ret) {
  netif_err(pdata, tx_err, netdev,
     "error processing TSO packet\n");
  dev_kfree_skb_any(skb);
  return ret;
 }
 xlgmac_prep_vlan(skb, tx_pkt_info);

 if (!desc_ops->map_tx_skb(channel, skb)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }


 netdev_tx_sent_queue(txq, tx_pkt_info->tx_bytes);


 hw_ops->dev_xmit(channel);

 if (netif_msg_pktdata(pdata))
  xlgmac_print_pkt(netdev, skb, 1);


 xlgmac_maybe_stop_tx_queue(channel, ring, XLGMAC_TX_MAX_DESC_NR);

 return NETDEV_TX_OK;
}

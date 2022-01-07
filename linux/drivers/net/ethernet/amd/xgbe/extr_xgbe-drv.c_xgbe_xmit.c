
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_packet_data {int tx_bytes; int rdesc_count; } ;
struct xgbe_ring {struct xgbe_packet_data packet_data; } ;
struct xgbe_desc_if {int (* map_tx_skb ) (struct xgbe_channel*,struct sk_buff*) ;} ;
struct xgbe_hw_if {int (* dev_xmit ) (struct xgbe_channel*) ;} ;
struct xgbe_prv_data {struct xgbe_channel** channel; struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; int queue_index; } ;
struct sk_buff {scalar_t__ len; size_t queue_mapping; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ netdev_tx_t ;


 int DBGPR (char*,scalar_t__) ;
 scalar_t__ NETDEV_TX_OK ;
 int XGBE_TX_MAX_DESCS ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memset (struct xgbe_packet_data*,int ,int) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netdev_tx_sent_queue (struct netdev_queue*,int ) ;
 int netif_err (struct xgbe_prv_data*,int ,struct net_device*,char*) ;
 scalar_t__ netif_msg_pktdata (struct xgbe_prv_data*) ;
 int stub1 (struct xgbe_channel*,struct sk_buff*) ;
 int stub2 (struct xgbe_channel*) ;
 int tx_err ;
 scalar_t__ xgbe_maybe_stop_tx_queue (struct xgbe_channel*,struct xgbe_ring*,int ) ;
 int xgbe_packet_info (struct xgbe_prv_data*,struct xgbe_ring*,struct sk_buff*,struct xgbe_packet_data*) ;
 scalar_t__ xgbe_prep_tso (struct sk_buff*,struct xgbe_packet_data*) ;
 int xgbe_prep_tx_tstamp (struct xgbe_prv_data*,struct sk_buff*,struct xgbe_packet_data*) ;
 int xgbe_prep_vlan (struct sk_buff*,struct xgbe_packet_data*) ;
 int xgbe_print_pkt (struct net_device*,struct sk_buff*,int) ;

__attribute__((used)) static netdev_tx_t xgbe_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_desc_if *desc_if = &pdata->desc_if;
 struct xgbe_channel *channel;
 struct xgbe_ring *ring;
 struct xgbe_packet_data *packet;
 struct netdev_queue *txq;
 netdev_tx_t ret;

 DBGPR("-->xgbe_xmit: skb->len = %d\n", skb->len);

 channel = pdata->channel[skb->queue_mapping];
 txq = netdev_get_tx_queue(netdev, channel->queue_index);
 ring = channel->tx_ring;
 packet = &ring->packet_data;

 ret = NETDEV_TX_OK;

 if (skb->len == 0) {
  netif_err(pdata, tx_err, netdev,
     "empty skb received from stack\n");
  dev_kfree_skb_any(skb);
  goto tx_netdev_return;
 }


 memset(packet, 0, sizeof(*packet));
 xgbe_packet_info(pdata, ring, skb, packet);


 ret = xgbe_maybe_stop_tx_queue(channel, ring, packet->rdesc_count);
 if (ret)
  goto tx_netdev_return;

 ret = xgbe_prep_tso(skb, packet);
 if (ret) {
  netif_err(pdata, tx_err, netdev,
     "error processing TSO packet\n");
  dev_kfree_skb_any(skb);
  goto tx_netdev_return;
 }
 xgbe_prep_vlan(skb, packet);

 if (!desc_if->map_tx_skb(channel, skb)) {
  dev_kfree_skb_any(skb);
  goto tx_netdev_return;
 }

 xgbe_prep_tx_tstamp(pdata, skb, packet);


 netdev_tx_sent_queue(txq, packet->tx_bytes);


 hw_if->dev_xmit(channel);

 if (netif_msg_pktdata(pdata))
  xgbe_print_pkt(netdev, skb, 1);


 xgbe_maybe_stop_tx_queue(channel, ring, XGBE_TX_MAX_DESCS);

 ret = NETDEV_TX_OK;

tx_netdev_return:
 return ret;
}

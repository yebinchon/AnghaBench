
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxcan_priv {int peer; } ;
struct sk_buff {int ip_summed; struct net_device* dev; int pkt_type; scalar_t__ csum_start; scalar_t__ data; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct canfd_frame {scalar_t__ len; } ;
typedef int netdev_tx_t ;


 int CHECKSUM_UNNECESSARY ;
 int NETDEV_TX_OK ;
 scalar_t__ NET_RX_SUCCESS ;
 int PACKET_BROADCAST ;
 struct sk_buff* can_create_echo_skb (struct sk_buff*) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct vxcan_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_rx_ni (struct sk_buff*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t vxcan_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct vxcan_priv *priv = netdev_priv(dev);
 struct net_device *peer;
 struct canfd_frame *cfd = (struct canfd_frame *)skb->data;
 struct net_device_stats *peerstats, *srcstats = &dev->stats;

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;

 rcu_read_lock();
 peer = rcu_dereference(priv->peer);
 if (unlikely(!peer)) {
  kfree_skb(skb);
  dev->stats.tx_dropped++;
  goto out_unlock;
 }

 skb = can_create_echo_skb(skb);
 if (!skb)
  goto out_unlock;


 skb->csum_start = 0;
 skb->pkt_type = PACKET_BROADCAST;
 skb->dev = peer;
 skb->ip_summed = CHECKSUM_UNNECESSARY;

 if (netif_rx_ni(skb) == NET_RX_SUCCESS) {
  srcstats->tx_packets++;
  srcstats->tx_bytes += cfd->len;
  peerstats = &peer->stats;
  peerstats->rx_packets++;
  peerstats->rx_bytes += cfd->len;
 }

out_unlock:
 rcu_read_unlock();
 return NETDEV_TX_OK;
}

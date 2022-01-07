
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_wifi_netdev_priv {int lowerdev; int tx_failed; int is_connected; int tx_packets; } ;
struct sk_buff {int dev; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NET_XMIT_DROP ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_tx_t virt_wifi_start_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(dev);

 priv->tx_packets++;
 if (!priv->is_connected) {
  priv->tx_failed++;
  return NET_XMIT_DROP;
 }

 skb->dev = priv->lowerdev;
 return dev_queue_xmit(skb);
}

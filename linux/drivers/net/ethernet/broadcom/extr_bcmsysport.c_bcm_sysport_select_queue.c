
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bcm_sysport_tx_ring {int index; } ;
struct bcm_sysport_priv {unsigned int per_port_num_tx_queues; struct bcm_sysport_tx_ring** ring_map; } ;


 unsigned int BRCM_TAG_GET_PORT (int ) ;
 unsigned int BRCM_TAG_GET_QUEUE (int ) ;
 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int netdev_uses_dsa (struct net_device*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 bcm_sysport_select_queue(struct net_device *dev, struct sk_buff *skb,
        struct net_device *sb_dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 u16 queue = skb_get_queue_mapping(skb);
 struct bcm_sysport_tx_ring *tx_ring;
 unsigned int q, port;

 if (!netdev_uses_dsa(dev))
  return netdev_pick_tx(dev, skb, ((void*)0));


 q = BRCM_TAG_GET_QUEUE(queue);
 port = BRCM_TAG_GET_PORT(queue);
 tx_ring = priv->ring_map[q + port * priv->per_port_num_tx_queues];

 if (unlikely(!tx_ring))
  return netdev_pick_tx(dev, skb, ((void*)0));

 return tx_ring->index;
}

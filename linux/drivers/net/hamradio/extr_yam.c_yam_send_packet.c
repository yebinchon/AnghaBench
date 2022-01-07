
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_port {int send_queue; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int ETH_P_IP ;
 int NETDEV_TX_OK ;
 int ax25_ip_xmit (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct yam_port* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t yam_send_packet(struct sk_buff *skb,
      struct net_device *dev)
{
 struct yam_port *yp = netdev_priv(dev);

 if (skb->protocol == htons(ETH_P_IP))
  return ax25_ip_xmit(skb);

 skb_queue_tail(&yp->send_queue, skb);
 netif_trans_update(dev);
 return NETDEV_TX_OK;
}

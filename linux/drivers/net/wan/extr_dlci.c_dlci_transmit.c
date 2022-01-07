
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct dlci_local {int slave; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 struct dlci_local* netdev_priv (struct net_device*) ;
 int netdev_start_xmit (struct sk_buff*,int ,struct netdev_queue*,int) ;
 struct netdev_queue* skb_get_tx_queue (struct net_device*,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t dlci_transmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dlci_local *dlp = netdev_priv(dev);

 if (skb) {
  struct netdev_queue *txq = skb_get_tx_queue(dev, skb);
  netdev_start_xmit(skb, dlp->slave, txq, 0);
 }
 return NETDEV_TX_OK;
}

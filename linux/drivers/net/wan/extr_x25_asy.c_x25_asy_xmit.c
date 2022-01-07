
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_asy {int dev; } ;
struct sk_buff {int* data; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int LAPB_OK ;
 int NETDEV_TX_OK ;



 int kfree_skb (struct sk_buff*) ;
 int lapb_connect_request (struct net_device*) ;
 int lapb_data_request (struct net_device*,struct sk_buff*) ;
 int lapb_disconnect_request (struct net_device*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 int netif_running (int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static netdev_tx_t x25_asy_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 struct x25_asy *sl = netdev_priv(dev);
 int err;

 if (!netif_running(sl->dev)) {
  netdev_err(dev, "xmit call when iface is down\n");
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 switch (skb->data[0]) {
 case 129:
  break;
 case 130:
  err = lapb_connect_request(dev);
  if (err != LAPB_OK)
   netdev_err(dev, "lapb_connect_request error: %d\n",
       err);
  kfree_skb(skb);
  return NETDEV_TX_OK;
 case 128:
  err = lapb_disconnect_request(dev);
  if (err != LAPB_OK)
   netdev_err(dev, "lapb_disconnect_request error: %d\n",
       err);

 default:
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 skb_pull(skb, 1);
 err = lapb_data_request(dev, skb);
 if (err != LAPB_OK) {
  netdev_err(dev, "lapb_data_request error: %d\n", err);
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 return NETDEV_TX_OK;
}

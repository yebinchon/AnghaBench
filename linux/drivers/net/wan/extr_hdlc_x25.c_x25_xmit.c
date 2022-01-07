
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int LAPB_CONNECTED ;
 int LAPB_NOTCONNECTED ;
 int LAPB_OK ;
 int NETDEV_TX_OK ;



 int dev_kfree_skb (struct sk_buff*) ;
 int lapb_connect_request (struct net_device*) ;
 int lapb_data_request (struct net_device*,struct sk_buff*) ;
 int lapb_disconnect_request (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int x25_connected (struct net_device*,int ) ;
 int x25_disconnected (struct net_device*,int ) ;

__attribute__((used)) static netdev_tx_t x25_xmit(struct sk_buff *skb, struct net_device *dev)
{
 int result;



 switch (skb->data[0]) {
 case 129:
  skb_pull(skb, 1);
  if ((result = lapb_data_request(dev, skb)) != LAPB_OK)
   dev_kfree_skb(skb);
  return NETDEV_TX_OK;

 case 130:
  if ((result = lapb_connect_request(dev))!= LAPB_OK) {
   if (result == LAPB_CONNECTED)

    x25_connected(dev, 0);
   else
    netdev_err(dev, "LAPB connect request failed, error code = %i\n",
        result);
  }
  break;

 case 128:
  if ((result = lapb_disconnect_request(dev)) != LAPB_OK) {
   if (result == LAPB_NOTCONNECTED)

    x25_disconnected(dev, 0);
   else
    netdev_err(dev, "LAPB disconnect request failed, error code = %i\n",
        result);
  }
  break;

 default:
  break;
 }

 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}

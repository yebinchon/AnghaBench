
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int LAPB_OK ;
 int NETDEV_TX_OK ;



 int kfree_skb (struct sk_buff*) ;
 int lapb_connect_request (struct net_device*) ;
 int lapb_data_request (struct net_device*,struct sk_buff*) ;
 int lapb_disconnect_request (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pr_err (char*,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static netdev_tx_t lapbeth_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 int err;





 if (!netif_running(dev))
  goto drop;

 switch (skb->data[0]) {
 case 129:
  break;
 case 130:
  if ((err = lapb_connect_request(dev)) != LAPB_OK)
   pr_err("lapb_connect_request error: %d\n", err);
  goto drop;
 case 128:
  if ((err = lapb_disconnect_request(dev)) != LAPB_OK)
   pr_err("lapb_disconnect_request err: %d\n", err);

 default:
  goto drop;
 }

 skb_pull(skb, 1);

 if ((err = lapb_data_request(dev, skb)) != LAPB_OK) {
  pr_err("lapb_data_request error - %d\n", err);
  goto drop;
 }
out:
 return NETDEV_TX_OK;
drop:
 kfree_skb(skb);
 goto out;
}

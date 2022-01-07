
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ntb_netdev {int tx_timer; int qp; } ;
struct net_device {int dummy; } ;


 int del_timer_sync (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int ntb_transport_link_down (int ) ;
 struct sk_buff* ntb_transport_rx_remove (int ,int*) ;

__attribute__((used)) static int ntb_netdev_close(struct net_device *ndev)
{
 struct ntb_netdev *dev = netdev_priv(ndev);
 struct sk_buff *skb;
 int len;

 ntb_transport_link_down(dev->qp);

 while ((skb = ntb_transport_rx_remove(dev->qp, &len)))
  dev_kfree_skb(skb);

 del_timer_sync(&dev->tx_timer);

 return 0;
}

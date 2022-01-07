
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcauart {int rx_skb; } ;
struct net_device {int dummy; } ;


 int dev_kfree_skb (int ) ;
 struct qcauart* netdev_priv (struct net_device*) ;

__attribute__((used)) static void qcauart_netdev_uninit(struct net_device *dev)
{
 struct qcauart *qca = netdev_priv(dev);

 dev_kfree_skb(qca->rx_skb);
}

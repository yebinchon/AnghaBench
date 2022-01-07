
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcauart {int net_dev; } ;
struct net_device {int dummy; } ;


 struct qcauart* netdev_priv (struct net_device*) ;
 int netif_start_queue (int ) ;

__attribute__((used)) static int qcauart_netdev_open(struct net_device *dev)
{
 struct qcauart *qca = netdev_priv(dev);

 netif_start_queue(qca->net_dev);

 return 0;
}

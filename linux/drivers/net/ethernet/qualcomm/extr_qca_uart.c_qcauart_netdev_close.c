
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcauart {int lock; scalar_t__ tx_left; int tx_work; } ;
struct net_device {int dummy; } ;


 int flush_work (int *) ;
 struct qcauart* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qcauart_netdev_close(struct net_device *dev)
{
 struct qcauart *qca = netdev_priv(dev);

 netif_stop_queue(dev);
 flush_work(&qca->tx_work);

 spin_lock_bh(&qca->lock);
 qca->tx_left = 0;
 spin_unlock_bh(&qca->lock);

 return 0;
}

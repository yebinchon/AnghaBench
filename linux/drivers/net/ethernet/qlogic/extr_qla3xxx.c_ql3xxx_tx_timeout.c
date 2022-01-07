
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int tx_timeout_work; int workqueue; } ;
struct net_device {int dummy; } ;


 int netdev_err (struct net_device*,char*) ;
 struct ql3_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void ql3xxx_tx_timeout(struct net_device *ndev)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);

 netdev_err(ndev, "Resetting...\n");



 netif_stop_queue(ndev);




 queue_delayed_work(qdev->workqueue, &qdev->tx_timeout_work, 0);
}

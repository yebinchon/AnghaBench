
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;

__attribute__((used)) static void fjes_tx_retry(struct net_device *netdev)
{
 struct netdev_queue *queue = netdev_get_tx_queue(netdev, 0);

 netif_tx_wake_queue(queue);
}

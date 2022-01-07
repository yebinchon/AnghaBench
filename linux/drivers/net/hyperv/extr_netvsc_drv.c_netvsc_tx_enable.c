
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int tx_disable; } ;
struct net_device {int dummy; } ;


 int netif_tx_wake_all_queues (struct net_device*) ;
 int virt_wmb () ;

__attribute__((used)) static void netvsc_tx_enable(struct netvsc_device *nvscdev,
        struct net_device *ndev)
{
 nvscdev->tx_disable = 0;
 virt_wmb();

 netif_tx_wake_all_queues(ndev);
}

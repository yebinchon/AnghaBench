
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 int gmac_tx_irq_enable (struct net_device*,unsigned int,int ) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;

__attribute__((used)) static void gmac_tx_irq(struct net_device *netdev, unsigned int txq_num)
{
 struct netdev_queue *ntxq = netdev_get_tx_queue(netdev, txq_num);

 gmac_tx_irq_enable(netdev, txq_num, 0);
 netif_tx_wake_queue(ntxq);
}

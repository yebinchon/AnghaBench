
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct gelic_card {int tx_timeout_task_counter; int tx_timeout_task; } ;


 int IFF_UP ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct gelic_card* netdev_card (struct net_device*) ;
 int schedule_work (int *) ;

void gelic_net_tx_timeout(struct net_device *netdev)
{
 struct gelic_card *card;

 card = netdev_card(netdev);
 atomic_inc(&card->tx_timeout_task_counter);
 if (netdev->flags & IFF_UP)
  schedule_work(&card->tx_timeout_task);
 else
  atomic_dec(&card->tx_timeout_task_counter);
}

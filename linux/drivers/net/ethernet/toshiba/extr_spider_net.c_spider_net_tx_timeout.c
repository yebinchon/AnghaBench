
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_timeouts; } ;
struct spider_net_card {TYPE_1__ spider_stats; int tx_timeout_task_counter; int tx_timeout_task; } ;
struct net_device {int flags; } ;


 int IFF_UP ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
spider_net_tx_timeout(struct net_device *netdev)
{
 struct spider_net_card *card;

 card = netdev_priv(netdev);
 atomic_inc(&card->tx_timeout_task_counter);
 if (netdev->flags & IFF_UP)
  schedule_work(&card->tx_timeout_task);
 else
  atomic_dec(&card->tx_timeout_task_counter);
 card->spider_stats.tx_timeouts++;
}

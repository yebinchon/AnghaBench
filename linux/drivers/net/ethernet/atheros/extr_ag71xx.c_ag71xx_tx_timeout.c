
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ag71xx {int restart_work; } ;


 struct ag71xx* netdev_priv (struct net_device*) ;
 int netif_err (struct ag71xx*,int ,struct net_device*,char*) ;
 int schedule_delayed_work (int *,int) ;
 int tx_err ;

__attribute__((used)) static void ag71xx_tx_timeout(struct net_device *ndev)
{
 struct ag71xx *ag = netdev_priv(ndev);

 netif_err(ag, tx_err, ndev, "tx timeout\n");

 schedule_delayed_work(&ag->restart_work, 1);
}

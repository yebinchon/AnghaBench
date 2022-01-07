
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ionic_lif {int tx_timeout_work; } ;


 struct ionic_lif* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ionic_tx_timeout(struct net_device *netdev)
{
 struct ionic_lif *lif = netdev_priv(netdev);

 schedule_work(&lif->tx_timeout_work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_adapter {int work_thread; } ;


 struct emac_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void emac_tx_timeout(struct net_device *netdev)
{
 struct emac_adapter *adpt = netdev_priv(netdev);

 schedule_work(&adpt->work_thread);
}

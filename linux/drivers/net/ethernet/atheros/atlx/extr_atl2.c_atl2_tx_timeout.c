
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl2_adapter {int reset_task; } ;


 struct atl2_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void atl2_tx_timeout(struct net_device *netdev)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);


 schedule_work(&adapter->reset_task);
}

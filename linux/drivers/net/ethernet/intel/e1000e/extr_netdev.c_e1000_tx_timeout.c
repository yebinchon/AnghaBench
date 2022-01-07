
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_adapter {int reset_task; int tx_timeout_count; } ;


 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void e1000_tx_timeout(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);


 adapter->tx_timeout_count++;
 schedule_work(&adapter->reset_task);
}

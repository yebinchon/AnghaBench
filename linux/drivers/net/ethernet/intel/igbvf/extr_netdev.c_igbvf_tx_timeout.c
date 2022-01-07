
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_adapter {int reset_task; int tx_timeout_count; } ;


 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void igbvf_tx_timeout(struct net_device *netdev)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);


 adapter->tx_timeout_count++;
 schedule_work(&adapter->reset_task);
}

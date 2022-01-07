
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_timeout_count; } ;
struct pch_gbe_adapter {int reset_task; TYPE_1__ stats; } ;
struct net_device {int dummy; } ;


 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void pch_gbe_tx_timeout(struct net_device *netdev)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);


 adapter->stats.tx_timeout_count++;
 schedule_work(&adapter->reset_task);
}

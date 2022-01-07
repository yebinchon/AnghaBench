
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;
struct igc_adapter {int state; } ;


 int __IGC_RESETTING ;
 int igc_update_stats (struct igc_adapter*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct net_device_stats *igc_get_stats(struct net_device *netdev)
{
 struct igc_adapter *adapter = netdev_priv(netdev);

 if (!test_bit(__IGC_RESETTING, &adapter->state))
  igc_update_stats(adapter);


 return &netdev->stats;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1c_adapter {int common_task; int flags; } ;


 int WARN_ON (int ) ;
 int __AT_DOWN ;
 int __AT_RESETTING ;
 int atl1c_down (struct atl1c_adapter*) ;
 int atl1c_free_ring_resources (struct atl1c_adapter*) ;
 int cancel_work_sync (int *) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int atl1c_close(struct net_device *netdev)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);

 WARN_ON(test_bit(__AT_RESETTING, &adapter->flags));
 set_bit(__AT_DOWN, &adapter->flags);
 cancel_work_sync(&adapter->common_task);
 atl1c_down(adapter);
 atl1c_free_ring_resources(adapter);
 return 0;
}

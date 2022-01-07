
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1e_adapter {int flags; } ;


 int WARN_ON (int ) ;
 int __AT_RESETTING ;
 int atl1e_down (struct atl1e_adapter*) ;
 int atl1e_free_irq (struct atl1e_adapter*) ;
 int atl1e_free_ring_resources (struct atl1e_adapter*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int atl1e_close(struct net_device *netdev)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);

 WARN_ON(test_bit(__AT_RESETTING, &adapter->flags));
 atl1e_down(adapter);
 atl1e_free_irq(adapter);
 atl1e_free_ring_resources(adapter);

 return 0;
}

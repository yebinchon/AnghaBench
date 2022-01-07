
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl2_adapter {int flags; } ;


 int WARN_ON (int ) ;
 int __ATL2_RESETTING ;
 int atl2_down (struct atl2_adapter*) ;
 int atl2_free_irq (struct atl2_adapter*) ;
 int atl2_free_ring_resources (struct atl2_adapter*) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int atl2_close(struct net_device *netdev)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);

 WARN_ON(test_bit(__ATL2_RESETTING, &adapter->flags));

 atl2_down(adapter);
 atl2_free_irq(adapter);
 atl2_free_ring_resources(adapter);

 return 0;
}

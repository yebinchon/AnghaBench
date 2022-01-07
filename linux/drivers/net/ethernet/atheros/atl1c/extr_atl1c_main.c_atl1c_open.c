
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1c_adapter {int hw; int flags; } ;


 int EBUSY ;
 int __AT_TESTING ;
 int atl1c_free_irq (struct atl1c_adapter*) ;
 int atl1c_free_ring_resources (struct atl1c_adapter*) ;
 int atl1c_reset_mac (int *) ;
 int atl1c_setup_ring_resources (struct atl1c_adapter*) ;
 int atl1c_up (struct atl1c_adapter*) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl1c_open(struct net_device *netdev)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 int err;


 if (test_bit(__AT_TESTING, &adapter->flags))
  return -EBUSY;


 err = atl1c_setup_ring_resources(adapter);
 if (unlikely(err))
  return err;

 err = atl1c_up(adapter);
 if (unlikely(err))
  goto err_up;

 return 0;

err_up:
 atl1c_free_irq(adapter);
 atl1c_free_ring_resources(adapter);
 atl1c_reset_mac(&adapter->hw);
 return err;
}

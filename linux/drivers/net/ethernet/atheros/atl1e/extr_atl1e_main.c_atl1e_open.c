
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1e_adapter {int hw; int flags; } ;


 int EBUSY ;
 int __AT_TESTING ;
 int atl1e_free_irq (struct atl1e_adapter*) ;
 int atl1e_free_ring_resources (struct atl1e_adapter*) ;
 int atl1e_init_ring_resources (struct atl1e_adapter*) ;
 int atl1e_request_irq (struct atl1e_adapter*) ;
 int atl1e_reset_hw (int *) ;
 int atl1e_setup_ring_resources (struct atl1e_adapter*) ;
 int atl1e_up (struct atl1e_adapter*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl1e_open(struct net_device *netdev)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);
 int err;


 if (test_bit(__AT_TESTING, &adapter->flags))
  return -EBUSY;


 atl1e_init_ring_resources(adapter);
 err = atl1e_setup_ring_resources(adapter);
 if (unlikely(err))
  return err;

 err = atl1e_request_irq(adapter);
 if (unlikely(err))
  goto err_req_irq;

 err = atl1e_up(adapter);
 if (unlikely(err))
  goto err_up;

 return 0;

err_up:
 atl1e_free_irq(adapter);
err_req_irq:
 atl1e_free_ring_resources(adapter);
 atl1e_reset_hw(&adapter->hw);

 return err;
}

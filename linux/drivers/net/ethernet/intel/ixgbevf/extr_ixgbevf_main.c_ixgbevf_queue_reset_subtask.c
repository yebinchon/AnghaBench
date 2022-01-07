
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbevf_adapter {int state; struct net_device* netdev; } ;


 int __IXGBEVF_DOWN ;
 int __IXGBEVF_QUEUE_RESET_REQUESTED ;
 int __IXGBEVF_RESETTING ;
 int ixgbevf_clear_interrupt_scheme (struct ixgbevf_adapter*) ;
 int ixgbevf_close (struct net_device*) ;
 int ixgbevf_init_interrupt_scheme (struct ixgbevf_adapter*) ;
 int ixgbevf_open (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_queue_reset_subtask(struct ixgbevf_adapter *adapter)
{
 struct net_device *dev = adapter->netdev;

 if (!test_and_clear_bit(__IXGBEVF_QUEUE_RESET_REQUESTED,
    &adapter->state))
  return;


 if (test_bit(__IXGBEVF_DOWN, &adapter->state) ||
     test_bit(__IXGBEVF_RESETTING, &adapter->state))
  return;





 rtnl_lock();

 if (netif_running(dev))
  ixgbevf_close(dev);

 ixgbevf_clear_interrupt_scheme(adapter);
 ixgbevf_init_interrupt_scheme(adapter);

 if (netif_running(dev))
  ixgbevf_open(dev);

 rtnl_unlock();
}

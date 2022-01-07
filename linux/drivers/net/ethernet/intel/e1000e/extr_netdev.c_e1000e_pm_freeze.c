
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_adapter {int hw; int state; } ;
struct device {int dummy; } ;


 int E1000_CHECK_RESET_COUNT ;
 int WARN_ON (scalar_t__) ;
 int __E1000_RESETTING ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int e1000_free_irq (struct e1000_adapter*) ;
 int e1000e_disable_pcie_master (int *) ;
 int e1000e_down (struct e1000_adapter*,int) ;
 int e1000e_reset_interrupt_capability (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int e1000e_pm_freeze(struct device *dev)
{
 struct net_device *netdev = dev_get_drvdata(dev);
 struct e1000_adapter *adapter = netdev_priv(netdev);

 netif_device_detach(netdev);

 if (netif_running(netdev)) {
  int count = E1000_CHECK_RESET_COUNT;

  while (test_bit(__E1000_RESETTING, &adapter->state) && count--)
   usleep_range(10000, 11000);

  WARN_ON(test_bit(__E1000_RESETTING, &adapter->state));


  e1000e_down(adapter, 0);
  e1000_free_irq(adapter);
 }
 e1000e_reset_interrupt_capability(adapter);


 e1000e_disable_pcie_master(&adapter->hw);

 return 0;
}

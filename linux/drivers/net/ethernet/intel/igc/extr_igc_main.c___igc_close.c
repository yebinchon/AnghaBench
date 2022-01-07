
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igc_adapter {int state; } ;


 int WARN_ON (int ) ;
 int __IGC_RESETTING ;
 int igc_down (struct igc_adapter*) ;
 int igc_free_all_rx_resources (struct igc_adapter*) ;
 int igc_free_all_tx_resources (struct igc_adapter*) ;
 int igc_free_irq (struct igc_adapter*) ;
 int igc_release_hw_control (struct igc_adapter*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int __igc_close(struct net_device *netdev, bool suspending)
{
 struct igc_adapter *adapter = netdev_priv(netdev);

 WARN_ON(test_bit(__IGC_RESETTING, &adapter->state));

 igc_down(adapter);

 igc_release_hw_control(adapter);

 igc_free_irq(adapter);

 igc_free_all_tx_resources(adapter);
 igc_free_all_rx_resources(adapter);

 return 0;
}

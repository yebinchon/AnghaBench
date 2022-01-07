
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int dummy; } ;


 int ixgbevf_down (struct ixgbevf_adapter*) ;
 int ixgbevf_free_all_rx_resources (struct ixgbevf_adapter*) ;
 int ixgbevf_free_all_tx_resources (struct ixgbevf_adapter*) ;
 int ixgbevf_free_irq (struct ixgbevf_adapter*) ;

__attribute__((used)) static void ixgbevf_close_suspend(struct ixgbevf_adapter *adapter)
{
 ixgbevf_down(adapter);
 ixgbevf_free_irq(adapter);
 ixgbevf_free_all_tx_resources(adapter);
 ixgbevf_free_all_rx_resources(adapter);
}

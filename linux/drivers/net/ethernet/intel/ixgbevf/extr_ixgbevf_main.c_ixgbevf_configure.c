
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int netdev; } ;


 int ixgbevf_configure_dcb (struct ixgbevf_adapter*) ;
 int ixgbevf_configure_rx (struct ixgbevf_adapter*) ;
 int ixgbevf_configure_tx (struct ixgbevf_adapter*) ;
 int ixgbevf_ipsec_restore (struct ixgbevf_adapter*) ;
 int ixgbevf_restore_vlan (struct ixgbevf_adapter*) ;
 int ixgbevf_set_rx_mode (int ) ;

__attribute__((used)) static void ixgbevf_configure(struct ixgbevf_adapter *adapter)
{
 ixgbevf_configure_dcb(adapter);

 ixgbevf_set_rx_mode(adapter->netdev);

 ixgbevf_restore_vlan(adapter);
 ixgbevf_ipsec_restore(adapter);

 ixgbevf_configure_tx(adapter);
 ixgbevf_configure_rx(adapter);
}

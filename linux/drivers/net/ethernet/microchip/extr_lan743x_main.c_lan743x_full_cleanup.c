
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int netdev; } ;


 int lan743x_hardware_cleanup (struct lan743x_adapter*) ;
 int lan743x_mdiobus_cleanup (struct lan743x_adapter*) ;
 int lan743x_pci_cleanup (struct lan743x_adapter*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void lan743x_full_cleanup(struct lan743x_adapter *adapter)
{
 unregister_netdev(adapter->netdev);

 lan743x_mdiobus_cleanup(adapter);
 lan743x_hardware_cleanup(adapter);
 lan743x_pci_cleanup(adapter);
}

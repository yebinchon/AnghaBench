
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igbvf_adapter {int rx_ring; int netdev; } ;


 int igbvf_alloc_rx_buffers (int ,int ) ;
 int igbvf_configure_rx (struct igbvf_adapter*) ;
 int igbvf_configure_tx (struct igbvf_adapter*) ;
 int igbvf_desc_unused (int ) ;
 int igbvf_restore_vlan (struct igbvf_adapter*) ;
 int igbvf_set_rx_mode (int ) ;
 int igbvf_setup_srrctl (struct igbvf_adapter*) ;

__attribute__((used)) static void igbvf_configure(struct igbvf_adapter *adapter)
{
 igbvf_set_rx_mode(adapter->netdev);

 igbvf_restore_vlan(adapter);

 igbvf_configure_tx(adapter);
 igbvf_setup_srrctl(adapter);
 igbvf_configure_rx(adapter);
 igbvf_alloc_rx_buffers(adapter->rx_ring,
          igbvf_desc_unused(adapter->rx_ring));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct igc_mac_addr {int state; int addr; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct igc_adapter {TYPE_2__ hw; struct igc_mac_addr* mac_table; } ;


 int IGC_MAC_STATE_DEFAULT ;
 int IGC_MAC_STATE_IN_USE ;
 int ether_addr_copy (int ,int ) ;
 int igc_rar_set_index (struct igc_adapter*,int ) ;

__attribute__((used)) static void igc_set_default_mac_filter(struct igc_adapter *adapter)
{
 struct igc_mac_addr *mac_table = &adapter->mac_table[0];

 ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
 mac_table->state = IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;

 igc_rar_set_index(adapter, 0);
}

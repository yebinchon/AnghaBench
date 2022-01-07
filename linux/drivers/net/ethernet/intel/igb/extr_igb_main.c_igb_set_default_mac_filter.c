
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct igb_mac_addr {int state; int queue; int addr; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct igb_adapter {int vfs_allocated_count; TYPE_2__ hw; struct igb_mac_addr* mac_table; } ;


 int IGB_MAC_STATE_DEFAULT ;
 int IGB_MAC_STATE_IN_USE ;
 int ether_addr_copy (int ,int ) ;
 int igb_rar_set_index (struct igb_adapter*,int ) ;

__attribute__((used)) static void igb_set_default_mac_filter(struct igb_adapter *adapter)
{
 struct igb_mac_addr *mac_table = &adapter->mac_table[0];

 ether_addr_copy(mac_table->addr, adapter->hw.mac.addr);
 mac_table->queue = adapter->vfs_allocated_count;
 mac_table->state = IGB_MAC_STATE_DEFAULT | IGB_MAC_STATE_IN_USE;

 igb_rar_set_index(adapter, 0);
}

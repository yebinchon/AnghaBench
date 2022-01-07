
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksz_mac_table {int fid; int use_fid; scalar_t__ valid; int override; int ports; int mac_addr; } ;
struct ksz_hw {TYPE_1__* ksz_switch; } ;
struct TYPE_2__ {struct ksz_mac_table* mac_table; } ;


 int BROADCAST_ENTRY ;
 int IPV6_ADDR_ENTRY ;
 int sw_w_sta_mac_table (struct ksz_hw*,int,int ,int ,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void sw_block_addr(struct ksz_hw *hw)
{
 struct ksz_mac_table *entry;
 int i;

 for (i = BROADCAST_ENTRY; i <= IPV6_ADDR_ENTRY; i++) {
  entry = &hw->ksz_switch->mac_table[i];
  entry->valid = 0;
  sw_w_sta_mac_table(hw, i,
   entry->mac_addr, entry->ports,
   entry->override, entry->valid,
   entry->use_fid, entry->fid);
 }
}

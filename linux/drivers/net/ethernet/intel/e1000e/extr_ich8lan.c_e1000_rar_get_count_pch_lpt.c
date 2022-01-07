
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_FWSM_WLOCK_MAC_MASK ;
 int E1000_FWSM_WLOCK_MAC_SHIFT ;
 int FWSM ;
 int er32 (int ) ;

__attribute__((used)) static u32 e1000_rar_get_count_pch_lpt(struct e1000_hw *hw)
{
 u32 wlock_mac;
 u32 num_entries;

 wlock_mac = er32(FWSM) & E1000_FWSM_WLOCK_MAC_MASK;
 wlock_mac >>= E1000_FWSM_WLOCK_MAC_SHIFT;

 switch (wlock_mac) {
 case 0:

  num_entries = hw->mac.rar_entry_count;
  break;
 case 1:

  num_entries = 1;
  break;
 default:

  num_entries = wlock_mac + 1;
  break;
 }

 return num_entries;
}

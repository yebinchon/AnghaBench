
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int mta_reg_count; int * mta_shadow; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int BIT (scalar_t__) ;
 int E1000_MTA ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int ) ;
 int ETH_ALEN ;
 scalar_t__ e1000_hash_mc_addr (struct e1000_hw*,int *) ;
 int e1e_flush () ;
 int memset (int **,int ,int) ;

void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
     u8 *mc_addr_list, u32 mc_addr_count)
{
 u32 hash_value, hash_bit, hash_reg;
 int i;


 memset(&hw->mac.mta_shadow, 0, sizeof(hw->mac.mta_shadow));


 for (i = 0; (u32)i < mc_addr_count; i++) {
  hash_value = e1000_hash_mc_addr(hw, mc_addr_list);

  hash_reg = (hash_value >> 5) & (hw->mac.mta_reg_count - 1);
  hash_bit = hash_value & 0x1F;

  hw->mac.mta_shadow[hash_reg] |= BIT(hash_bit);
  mc_addr_list += (ETH_ALEN);
 }


 for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
 e1e_flush();
}

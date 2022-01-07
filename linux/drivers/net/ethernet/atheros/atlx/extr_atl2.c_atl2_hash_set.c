
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl2_hw {int dummy; } ;


 int ATL2_READ_REG_ARRAY (struct atl2_hw*,int ,int) ;
 int ATL2_WRITE_REG_ARRAY (struct atl2_hw*,int ,int,int) ;
 int REG_RX_HASH_TABLE ;

__attribute__((used)) static void atl2_hash_set(struct atl2_hw *hw, u32 hash_value)
{
 u32 hash_bit, hash_reg;
 u32 mta;
 hash_reg = (hash_value >> 31) & 0x1;
 hash_bit = (hash_value >> 26) & 0x1F;

 mta = ATL2_READ_REG_ARRAY(hw, REG_RX_HASH_TABLE, hash_reg);

 mta |= (1 << hash_bit);

 ATL2_WRITE_REG_ARRAY(hw, REG_RX_HASH_TABLE, hash_reg, mta);
}

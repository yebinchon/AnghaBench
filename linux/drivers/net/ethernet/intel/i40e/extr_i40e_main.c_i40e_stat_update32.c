
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;


 scalar_t__ BIT_ULL (int) ;
 scalar_t__ likely (int) ;
 scalar_t__ rd32 (struct i40e_hw*,scalar_t__) ;

__attribute__((used)) static void i40e_stat_update32(struct i40e_hw *hw, u32 reg,
          bool offset_loaded, u64 *offset, u64 *stat)
{
 u32 new_data;

 new_data = rd32(hw, reg);
 if (!offset_loaded)
  *offset = new_data;
 if (likely(new_data >= *offset))
  *stat = (u32)(new_data - *offset);
 else
  *stat = (u32)((new_data + BIT_ULL(32)) - *offset);
}

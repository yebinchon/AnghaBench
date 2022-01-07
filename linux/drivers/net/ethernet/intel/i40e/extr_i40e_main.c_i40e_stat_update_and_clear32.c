
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;


 scalar_t__ rd32 (struct i40e_hw*,scalar_t__) ;
 int wr32 (struct i40e_hw*,scalar_t__,int) ;

__attribute__((used)) static void i40e_stat_update_and_clear32(struct i40e_hw *hw, u32 reg, u64 *stat)
{
 u32 new_data = rd32(hw, reg);

 wr32(hw, reg, 1);
 *stat += new_data;
}

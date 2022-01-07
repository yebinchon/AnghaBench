
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ice_hw {int dummy; } ;


 scalar_t__ BIT_ULL (int) ;
 scalar_t__ rd32 (struct ice_hw*,scalar_t__) ;

void
ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
    u64 *prev_stat, u64 *cur_stat)
{
 u32 new_data;

 new_data = rd32(hw, reg);






 if (!prev_stat_loaded) {
  *prev_stat = new_data;
  return;
 }




 if (new_data >= *prev_stat)
  *cur_stat += new_data - *prev_stat;
 else

  *cur_stat += (new_data + BIT_ULL(32)) - *prev_stat;


 *prev_stat = new_data;
}

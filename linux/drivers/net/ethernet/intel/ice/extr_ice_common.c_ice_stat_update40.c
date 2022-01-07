
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ice_hw {int dummy; } ;


 int BIT_ULL (int) ;
 int rd64 (struct ice_hw*,int ) ;

void
ice_stat_update40(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
    u64 *prev_stat, u64 *cur_stat)
{
 u64 new_data = rd64(hw, reg) & (BIT_ULL(40) - 1);






 if (!prev_stat_loaded) {
  *prev_stat = new_data;
  return;
 }




 if (new_data >= *prev_stat)
  *cur_stat += new_data - *prev_stat;
 else

  *cur_stat += (new_data + BIT_ULL(40)) - *prev_stat;


 *prev_stat = new_data;
}

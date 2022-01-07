
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int in_ifs_mode; int ifs_ratio; int ifs_step_size; int ifs_max_val; int ifs_min_val; scalar_t__ current_ifs_val; int ifs_params_forced; scalar_t__ adaptive_ifs; } ;


 int AIT ;
 int IFS_MAX ;
 int IFS_MIN ;
 int IFS_RATIO ;
 int IFS_STEP ;
 int e_dbg (char*) ;
 int ew32 (int ,int ) ;

void e1000_reset_adaptive(struct e1000_hw *hw)
{
 if (hw->adaptive_ifs) {
  if (!hw->ifs_params_forced) {
   hw->current_ifs_val = 0;
   hw->ifs_min_val = IFS_MIN;
   hw->ifs_max_val = IFS_MAX;
   hw->ifs_step_size = IFS_STEP;
   hw->ifs_ratio = IFS_RATIO;
  }
  hw->in_ifs_mode = 0;
  ew32(AIT, 0);
 } else {
  e_dbg("Not in Adaptive IFS mode!\n");
 }
}

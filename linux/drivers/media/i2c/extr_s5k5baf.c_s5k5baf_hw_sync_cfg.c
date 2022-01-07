
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {scalar_t__ apply_crop; } ;


 int REG_G_INPUTS_CHANGE_REQ ;
 int REG_G_NEW_CFG_SYNC ;
 int REG_G_PREV_CFG_BYPASS_CHANGED ;
 int REG_G_PREV_CFG_CHG ;
 int s5k5baf_synchronize (struct s5k5baf*,int,int ) ;
 int s5k5baf_write (struct s5k5baf*,int ,int) ;

__attribute__((used)) static void s5k5baf_hw_sync_cfg(struct s5k5baf *state)
{
 s5k5baf_write(state, REG_G_PREV_CFG_CHG, 1);
 if (state->apply_crop) {
  s5k5baf_write(state, REG_G_INPUTS_CHANGE_REQ, 1);
  s5k5baf_write(state, REG_G_PREV_CFG_BYPASS_CHANGED, 1);
 }
 s5k5baf_synchronize(state, 500, REG_G_NEW_CFG_SYNC);
}

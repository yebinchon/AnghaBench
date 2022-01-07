
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* vflip; } ;
struct s5k5baf {scalar_t__ streaming; TYPE_2__ ctrls; } ;
struct TYPE_3__ {int val; } ;


 int REG_P_PREV_MIRROR (int ) ;
 int s5k5baf_hw_sync_cfg (struct s5k5baf*) ;
 int s5k5baf_write (struct s5k5baf*,int ,int) ;

__attribute__((used)) static void s5k5baf_hw_set_mirror(struct s5k5baf *state)
{
 u16 flip = state->ctrls.vflip->val | (state->ctrls.vflip->val << 1);

 s5k5baf_write(state, REG_P_PREV_MIRROR(0), flip);
 if (state->streaming)
  s5k5baf_hw_sync_cfg(state);
}

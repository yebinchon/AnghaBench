
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxl111sf_tuner_state {int mxl_state; TYPE_1__* cfg; } ;
struct TYPE_2__ {int (* top_master_ctrl ) (int ,int) ;} ;


 int EINVAL ;
 int stub1 (int ,int) ;

__attribute__((used)) static int mxl1x1sf_tuner_top_master_ctrl(struct mxl111sf_tuner_state *state,
       int onoff)
{
 return (state->cfg->top_master_ctrl) ?
  state->cfg->top_master_ctrl(state->mxl_state, onoff) :
  -EINVAL;
}

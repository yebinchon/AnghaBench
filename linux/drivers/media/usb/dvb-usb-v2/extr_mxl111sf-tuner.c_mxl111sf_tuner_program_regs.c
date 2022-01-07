
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxl111sf_tuner_state {int mxl_state; TYPE_1__* cfg; } ;
struct mxl111sf_reg_ctrl_info {int dummy; } ;
struct TYPE_2__ {int (* program_regs ) (int ,struct mxl111sf_reg_ctrl_info*) ;} ;


 int EINVAL ;
 int stub1 (int ,struct mxl111sf_reg_ctrl_info*) ;

__attribute__((used)) static int mxl111sf_tuner_program_regs(struct mxl111sf_tuner_state *state,
          struct mxl111sf_reg_ctrl_info *ctrl_reg_info)
{
 return (state->cfg->program_regs) ?
  state->cfg->program_regs(state->mxl_state, ctrl_reg_info) :
  -EINVAL;
}

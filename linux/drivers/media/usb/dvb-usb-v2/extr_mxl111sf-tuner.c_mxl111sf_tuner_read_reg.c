
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxl111sf_tuner_state {int mxl_state; TYPE_1__* cfg; } ;
struct TYPE_2__ {int (* read_reg ) (int ,int ,int *) ;} ;


 int EINVAL ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static int mxl111sf_tuner_read_reg(struct mxl111sf_tuner_state *state,
       u8 addr, u8 *data)
{
 return (state->cfg->read_reg) ?
  state->cfg->read_reg(state->mxl_state, addr, data) :
  -EINVAL;
}

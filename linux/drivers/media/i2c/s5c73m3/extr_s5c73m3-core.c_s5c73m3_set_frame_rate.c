
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* stabilization; } ;
struct s5c73m3 {scalar_t__ apply_fiv; TYPE_3__* fiv; TYPE_2__ ctrls; } ;
struct TYPE_6__ {int fps_reg; } ;
struct TYPE_4__ {scalar_t__ val; } ;


 int COMM_FRAME_RATE ;
 int EINVAL ;
 scalar_t__ WARN_ON (int ) ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int ) ;

__attribute__((used)) static int s5c73m3_set_frame_rate(struct s5c73m3 *state)
{
 int ret;

 if (state->ctrls.stabilization->val)
  return 0;

 if (WARN_ON(state->fiv == ((void*)0)))
  return -EINVAL;

 ret = s5c73m3_isp_command(state, COMM_FRAME_RATE, state->fiv->fps_reg);
 if (!ret)
  state->apply_fiv = 0;

 return ret;
}

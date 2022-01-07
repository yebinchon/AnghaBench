
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5c73m3_ctrls {TYPE_1__* focus_auto; } ;
struct s5c73m3 {struct s5c73m3_ctrls ctrls; } ;
struct TYPE_2__ {scalar_t__ val; } ;


 int COMM_AF_CON ;
 int COMM_AF_CON_START ;
 int COMM_AF_CON_STOP ;
 int COMM_AF_MODE ;
 int COMM_AF_MODE_PREVIEW_CAF_START ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int ) ;

__attribute__((used)) static int s5c73m3_af_run(struct s5c73m3 *state, bool on)
{
 struct s5c73m3_ctrls *c = &state->ctrls;

 if (!on)
  return s5c73m3_isp_command(state, COMM_AF_CON,
       COMM_AF_CON_STOP);

 if (c->focus_auto->val)
  return s5c73m3_isp_command(state, COMM_AF_MODE,
        COMM_AF_MODE_PREVIEW_CAF_START);

 return s5c73m3_isp_command(state, COMM_AF_CON, COMM_AF_CON_START);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
struct v4l2_ctrl {int val; TYPE_3__ cur; } ;
struct TYPE_5__ {TYPE_1__* auto_wb; } ;
struct s5c73m3 {TYPE_2__ ctrls; } ;
struct TYPE_4__ {scalar_t__ val; } ;


 int COMM_AE_CON ;
 int COMM_AE_START ;
 int COMM_AE_STOP ;
 int COMM_AWB_CON ;
 int COMM_AWB_START ;
 int COMM_AWB_STOP ;
 int V4L2_LOCK_EXPOSURE ;
 int V4L2_LOCK_FOCUS ;
 int V4L2_LOCK_WHITE_BALANCE ;
 int s5c73m3_af_run (struct s5c73m3*,int) ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int ) ;

__attribute__((used)) static int s5c73m3_3a_lock(struct s5c73m3 *state, struct v4l2_ctrl *ctrl)
{
 bool awb_lock = ctrl->val & V4L2_LOCK_WHITE_BALANCE;
 bool ae_lock = ctrl->val & V4L2_LOCK_EXPOSURE;
 bool af_lock = ctrl->val & V4L2_LOCK_FOCUS;
 int ret = 0;

 if ((ctrl->val ^ ctrl->cur.val) & V4L2_LOCK_EXPOSURE) {
  ret = s5c73m3_isp_command(state, COMM_AE_CON,
    ae_lock ? COMM_AE_STOP : COMM_AE_START);
  if (ret)
   return ret;
 }

 if (((ctrl->val ^ ctrl->cur.val) & V4L2_LOCK_WHITE_BALANCE)
     && state->ctrls.auto_wb->val) {
  ret = s5c73m3_isp_command(state, COMM_AWB_CON,
   awb_lock ? COMM_AWB_STOP : COMM_AWB_START);
  if (ret)
   return ret;
 }

 if ((ctrl->val ^ ctrl->cur.val) & V4L2_LOCK_FOCUS)
  ret = s5c73m3_af_run(state, !af_lock);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
struct v4l2_ctrl {int val; TYPE_3__ cur; } ;
struct TYPE_5__ {int af; } ;
struct m5mols_info {int sd; TYPE_2__ ver; TYPE_1__* auto_wb; } ;
struct TYPE_4__ {scalar_t__ val; } ;


 int AE_LOCK ;
 int AF_EXECUTE ;
 int AWB_LOCK ;
 int REG_AE_LOCK ;
 int REG_AE_UNLOCK ;
 int REG_AF_STOP ;
 int REG_AWB_LOCK ;
 int REG_AWB_UNLOCK ;
 int V4L2_LOCK_EXPOSURE ;
 int V4L2_LOCK_FOCUS ;
 int V4L2_LOCK_WHITE_BALANCE ;
 int m5mols_write (int *,int ,int ) ;

__attribute__((used)) static int m5mols_3a_lock(struct m5mols_info *info, struct v4l2_ctrl *ctrl)
{
 bool af_lock = ctrl->val & V4L2_LOCK_FOCUS;
 int ret = 0;

 if ((ctrl->val ^ ctrl->cur.val) & V4L2_LOCK_EXPOSURE) {
  bool ae_lock = ctrl->val & V4L2_LOCK_EXPOSURE;

  ret = m5mols_write(&info->sd, AE_LOCK, ae_lock ?
       REG_AE_LOCK : REG_AE_UNLOCK);
  if (ret)
   return ret;
 }

 if (((ctrl->val ^ ctrl->cur.val) & V4L2_LOCK_WHITE_BALANCE)
     && info->auto_wb->val) {
  bool awb_lock = ctrl->val & V4L2_LOCK_WHITE_BALANCE;

  ret = m5mols_write(&info->sd, AWB_LOCK, awb_lock ?
       REG_AWB_LOCK : REG_AWB_UNLOCK);
  if (ret)
   return ret;
 }

 if (!info->ver.af || !af_lock)
  return ret;

 if ((ctrl->val ^ ctrl->cur.val) & V4L2_LOCK_FOCUS)
  ret = m5mols_write(&info->sd, AF_EXECUTE, REG_AF_STOP);

 return ret;
}

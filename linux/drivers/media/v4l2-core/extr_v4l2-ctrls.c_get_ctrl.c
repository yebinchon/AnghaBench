
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int dummy; } ;
struct v4l2_ctrl {scalar_t__ type; int flags; int ncontrols; struct v4l2_ctrl** cluster; int is_int; } ;


 int EACCES ;
 int EINVAL ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_CTRL_FLAG_WRITE_ONLY ;
 scalar_t__ V4L2_CTRL_TYPE_INTEGER64 ;
 int call_op (struct v4l2_ctrl*,int ) ;
 int cur_to_new (struct v4l2_ctrl*) ;
 int cur_to_user (struct v4l2_ext_control*,struct v4l2_ctrl*) ;
 int g_volatile_ctrl ;
 int new_to_user (struct v4l2_ext_control*,struct v4l2_ctrl*) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

__attribute__((used)) static int get_ctrl(struct v4l2_ctrl *ctrl, struct v4l2_ext_control *c)
{
 struct v4l2_ctrl *master = ctrl->cluster[0];
 int ret = 0;
 int i;





 if (!ctrl->is_int && ctrl->type != V4L2_CTRL_TYPE_INTEGER64)
  return -EINVAL;

 if (ctrl->flags & V4L2_CTRL_FLAG_WRITE_ONLY)
  return -EACCES;

 v4l2_ctrl_lock(master);

 if (ctrl->flags & V4L2_CTRL_FLAG_VOLATILE) {
  for (i = 0; i < master->ncontrols; i++)
   cur_to_new(master->cluster[i]);
  ret = call_op(master, g_volatile_ctrl);
  new_to_user(c, ctrl);
 } else {
  cur_to_user(c, ctrl);
 }
 v4l2_ctrl_unlock(master);
 return ret;
}

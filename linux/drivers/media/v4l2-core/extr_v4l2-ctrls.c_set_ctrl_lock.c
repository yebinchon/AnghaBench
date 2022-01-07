
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_ext_control {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;


 int cur_to_user (struct v4l2_ext_control*,struct v4l2_ctrl*) ;
 int set_ctrl (struct v4l2_fh*,struct v4l2_ctrl*,int ) ;
 int user_to_new (struct v4l2_ext_control*,struct v4l2_ctrl*) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

__attribute__((used)) static int set_ctrl_lock(struct v4l2_fh *fh, struct v4l2_ctrl *ctrl,
    struct v4l2_ext_control *c)
{
 int ret;

 v4l2_ctrl_lock(ctrl);
 user_to_new(c, ctrl);
 ret = set_ctrl(fh, ctrl, 0);
 if (!ret)
  cur_to_user(c, ctrl);
 v4l2_ctrl_unlock(ctrl);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int name; } ;
struct ov965x {int lock; } ;


 int __g_volatile_ctrl (struct ov965x*,struct v4l2_ctrl*) ;
 struct v4l2_subdev* ctrl_to_sd (struct v4l2_ctrl*) ;
 int debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov965x* to_ov965x (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int ov965x_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sd(ctrl);
 struct ov965x *ov965x = to_ov965x(sd);
 int ret;

 v4l2_dbg(1, debug, sd, "g_ctrl: %s\n", ctrl->name);

 mutex_lock(&ov965x->lock);
 ret = __g_volatile_ctrl(ov965x, ctrl);
 mutex_unlock(&ov965x->lock);
 return ret;
}

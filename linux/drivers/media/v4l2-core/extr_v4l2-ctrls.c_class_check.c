
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_handler {int dummy; } ;


 int EINVAL ;
 int V4L2_CTRL_WHICH_DEF_VAL ;
 int V4L2_CTRL_WHICH_REQUEST_VAL ;
 scalar_t__ find_ref_lock (struct v4l2_ctrl_handler*,int) ;

__attribute__((used)) static int class_check(struct v4l2_ctrl_handler *hdl, u32 which)
{
 if (which == 0 || which == V4L2_CTRL_WHICH_DEF_VAL ||
     which == V4L2_CTRL_WHICH_REQUEST_VAL)
  return 0;
 return find_ref_lock(hdl, which | 1) ? 0 : -EINVAL;
}

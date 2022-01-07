
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl {scalar_t__ is_ptr; int flags; } ;


 int V4L2_CTRL_FLAG_HAS_PAYLOAD ;

__attribute__((used)) static u32 user_flags(const struct v4l2_ctrl *ctrl)
{
 u32 flags = ctrl->flags;

 if (ctrl->is_ptr)
  flags |= V4L2_CTRL_FLAG_HAS_PAYLOAD;

 return flags;
}

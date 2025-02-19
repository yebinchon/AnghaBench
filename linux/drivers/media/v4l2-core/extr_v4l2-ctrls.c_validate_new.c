
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union v4l2_ctrl_ptr {int dummy; } v4l2_ctrl_ptr ;
struct v4l2_ctrl {unsigned int elems; TYPE_1__* type_ops; } ;
struct TYPE_2__ {int (* validate ) (struct v4l2_ctrl const*,unsigned int,union v4l2_ctrl_ptr) ;} ;


 int stub1 (struct v4l2_ctrl const*,unsigned int,union v4l2_ctrl_ptr) ;

__attribute__((used)) static int validate_new(const struct v4l2_ctrl *ctrl, union v4l2_ctrl_ptr p_new)
{
 unsigned idx;
 int err = 0;

 for (idx = 0; !err && idx < ctrl->elems; idx++)
  err = ctrl->type_ops->validate(ctrl, idx, p_new);
 return err;
}

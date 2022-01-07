
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_control {int dummy; } ;
struct v4l2_ctrl {int elems; int p_new; TYPE_1__* type_ops; } ;
struct TYPE_2__ {int (* init ) (struct v4l2_ctrl*,int,int ) ;} ;


 int ptr_to_user (struct v4l2_ext_control*,struct v4l2_ctrl*,int ) ;
 int stub1 (struct v4l2_ctrl*,int,int ) ;

__attribute__((used)) static int def_to_user(struct v4l2_ext_control *c, struct v4l2_ctrl *ctrl)
{
 int idx;

 for (idx = 0; idx < ctrl->elems; idx++)
  ctrl->type_ops->init(ctrl, idx, ctrl->p_new);

 return ptr_to_user(c, ctrl, ctrl->p_new);
}

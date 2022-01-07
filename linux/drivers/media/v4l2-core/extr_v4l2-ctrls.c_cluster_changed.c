
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int ncontrols; int flags; int has_changed; unsigned int elems; int p_new; int p_cur; TYPE_1__* type_ops; struct v4l2_ctrl** cluster; } ;
struct TYPE_2__ {int (* equal ) (struct v4l2_ctrl*,unsigned int,int ,int ) ;} ;


 int V4L2_CTRL_FLAG_EXECUTE_ON_WRITE ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int stub1 (struct v4l2_ctrl*,unsigned int,int ,int ) ;

__attribute__((used)) static int cluster_changed(struct v4l2_ctrl *master)
{
 bool changed = 0;
 unsigned idx;
 int i;

 for (i = 0; i < master->ncontrols; i++) {
  struct v4l2_ctrl *ctrl = master->cluster[i];
  bool ctrl_changed = 0;

  if (ctrl == ((void*)0))
   continue;

  if (ctrl->flags & V4L2_CTRL_FLAG_EXECUTE_ON_WRITE)
   changed = ctrl_changed = 1;





  if (ctrl->flags & V4L2_CTRL_FLAG_VOLATILE) {
   ctrl->has_changed = 0;
   continue;
  }

  for (idx = 0; !ctrl_changed && idx < ctrl->elems; idx++)
   ctrl_changed = !ctrl->type_ops->equal(ctrl, idx,
    ctrl->p_cur, ctrl->p_new);
  ctrl->has_changed = ctrl_changed;
  changed |= ctrl->has_changed;
 }
 return changed;
}

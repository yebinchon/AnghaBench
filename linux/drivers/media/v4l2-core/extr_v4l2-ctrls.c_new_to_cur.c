
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_fh {int dummy; } ;
struct v4l2_ctrl {int has_changed; int flags; TYPE_1__* handler; scalar_t__ call_notify; int is_new; TYPE_2__** cluster; int p_cur; int p_new; } ;
struct TYPE_4__ {scalar_t__ has_volatiles; } ;
struct TYPE_3__ {int notify_priv; int (* notify ) (struct v4l2_ctrl*,int ) ;} ;


 int V4L2_CTRL_FLAG_INACTIVE ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_EVENT_CTRL_CH_FLAGS ;
 int V4L2_EVENT_CTRL_CH_VALUE ;
 int is_cur_manual (TYPE_2__*) ;
 int ptr_to_ptr (struct v4l2_ctrl*,int ,int ) ;
 int send_event (struct v4l2_fh*,struct v4l2_ctrl*,int) ;
 int stub1 (struct v4l2_ctrl*,int ) ;

__attribute__((used)) static void new_to_cur(struct v4l2_fh *fh, struct v4l2_ctrl *ctrl, u32 ch_flags)
{
 bool changed;

 if (ctrl == ((void*)0))
  return;


 changed = ctrl->has_changed;
 if (changed)
  ptr_to_ptr(ctrl, ctrl->p_new, ctrl->p_cur);

 if (ch_flags & V4L2_EVENT_CTRL_CH_FLAGS) {

  ctrl->flags &=
   ~(V4L2_CTRL_FLAG_INACTIVE | V4L2_CTRL_FLAG_VOLATILE);
  if (!is_cur_manual(ctrl->cluster[0])) {
   ctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
   if (ctrl->cluster[0]->has_volatiles)
    ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
  }
  fh = ((void*)0);
 }
 if (changed || ch_flags) {


  if (!ctrl->is_new)
   fh = ((void*)0);
  send_event(fh, ctrl,
   (changed ? V4L2_EVENT_CTRL_CH_VALUE : 0) | ch_flags);
  if (ctrl->call_notify && changed && ctrl->handler->notify)
   ctrl->handler->notify(ctrl, ctrl->handler->notify_priv);
 }
}

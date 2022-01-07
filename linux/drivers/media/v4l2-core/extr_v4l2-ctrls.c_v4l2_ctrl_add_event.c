
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subscribed_event {int flags; unsigned int elems; TYPE_1__* fh; int node; int id; } ;
struct v4l2_event {int dummy; } ;
struct v4l2_ctrl {scalar_t__ type; int flags; int ev_subs; } ;
struct TYPE_2__ {int ctrl_handler; } ;


 int EINVAL ;
 int V4L2_CTRL_FLAG_WRITE_ONLY ;
 scalar_t__ V4L2_CTRL_TYPE_CTRL_CLASS ;
 int V4L2_EVENT_CTRL_CH_FLAGS ;
 int V4L2_EVENT_CTRL_CH_VALUE ;
 int V4L2_EVENT_SUB_FL_SEND_INITIAL ;
 int fill_event (struct v4l2_event*,struct v4l2_ctrl*,int ) ;
 int list_add_tail (int *,int *) ;
 struct v4l2_ctrl* v4l2_ctrl_find (int ,int ) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;
 int v4l2_event_queue_fh (TYPE_1__*,struct v4l2_event*) ;

__attribute__((used)) static int v4l2_ctrl_add_event(struct v4l2_subscribed_event *sev, unsigned elems)
{
 struct v4l2_ctrl *ctrl = v4l2_ctrl_find(sev->fh->ctrl_handler, sev->id);

 if (ctrl == ((void*)0))
  return -EINVAL;

 v4l2_ctrl_lock(ctrl);
 list_add_tail(&sev->node, &ctrl->ev_subs);
 if (ctrl->type != V4L2_CTRL_TYPE_CTRL_CLASS &&
     (sev->flags & V4L2_EVENT_SUB_FL_SEND_INITIAL)) {
  struct v4l2_event ev;
  u32 changes = V4L2_EVENT_CTRL_CH_FLAGS;

  if (!(ctrl->flags & V4L2_CTRL_FLAG_WRITE_ONLY))
   changes |= V4L2_EVENT_CTRL_CH_VALUE;
  fill_event(&ev, ctrl, changes);


  sev->elems = elems;
  v4l2_event_queue_fh(sev->fh, &ev);
 }
 v4l2_ctrl_unlock(ctrl);
 return 0;
}

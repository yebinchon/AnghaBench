
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ type; int step; int default_value; int maximum; int minimum; scalar_t__ value64; int flags; int changes; } ;
struct TYPE_6__ {TYPE_2__ ctrl; } ;
struct v4l2_event {TYPE_3__ u; int id; int type; } ;
struct TYPE_4__ {scalar_t__* p_s64; } ;
struct v4l2_ctrl {scalar_t__ type; int step; int default_value; int maximum; int minimum; TYPE_1__ p_cur; scalar_t__ is_ptr; int id; } ;


 scalar_t__ V4L2_CTRL_TYPE_INTEGER_MENU ;
 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 int V4L2_EVENT_CTRL ;
 int memset (struct v4l2_event*,int ,int) ;
 int user_flags (struct v4l2_ctrl*) ;

__attribute__((used)) static void fill_event(struct v4l2_event *ev, struct v4l2_ctrl *ctrl, u32 changes)
{
 memset(ev, 0, sizeof(*ev));
 ev->type = V4L2_EVENT_CTRL;
 ev->id = ctrl->id;
 ev->u.ctrl.changes = changes;
 ev->u.ctrl.type = ctrl->type;
 ev->u.ctrl.flags = user_flags(ctrl);
 if (ctrl->is_ptr)
  ev->u.ctrl.value64 = 0;
 else
  ev->u.ctrl.value64 = *ctrl->p_cur.p_s64;
 ev->u.ctrl.minimum = ctrl->minimum;
 ev->u.ctrl.maximum = ctrl->maximum;
 if (ctrl->type == V4L2_CTRL_TYPE_MENU
     || ctrl->type == V4L2_CTRL_TYPE_INTEGER_MENU)
  ev->u.ctrl.step = 1;
 else
  ev->u.ctrl.step = ctrl->step;
 ev->u.ctrl.default_value = ctrl->default_value;
}

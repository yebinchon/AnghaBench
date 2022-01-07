
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_queryctrl {int default_value; int step; int maximum; int minimum; int flags; int type; int id; } ;
struct TYPE_3__ {int default_value; int step; int maximum; int minimum; int flags; int type; int changes; int value; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;
struct v4l2_event {TYPE_2__ u; int id; int type; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_control_mapping {int dummy; } ;
struct uvc_control {int dummy; } ;
typedef int s32 ;


 int V4L2_EVENT_CTRL ;
 int __uvc_query_v4l2_ctrl (struct uvc_video_chain*,struct uvc_control*,struct uvc_control_mapping*,struct v4l2_queryctrl*) ;
 int memset (struct v4l2_event*,int ,int) ;

__attribute__((used)) static void uvc_ctrl_fill_event(struct uvc_video_chain *chain,
 struct v4l2_event *ev,
 struct uvc_control *ctrl,
 struct uvc_control_mapping *mapping,
 s32 value, u32 changes)
{
 struct v4l2_queryctrl v4l2_ctrl;

 __uvc_query_v4l2_ctrl(chain, ctrl, mapping, &v4l2_ctrl);

 memset(ev, 0, sizeof(*ev));
 ev->type = V4L2_EVENT_CTRL;
 ev->id = v4l2_ctrl.id;
 ev->u.ctrl.value = value;
 ev->u.ctrl.changes = changes;
 ev->u.ctrl.type = v4l2_ctrl.type;
 ev->u.ctrl.flags = v4l2_ctrl.flags;
 ev->u.ctrl.minimum = v4l2_ctrl.minimum;
 ev->u.ctrl.maximum = v4l2_ctrl.maximum;
 ev->u.ctrl.step = v4l2_ctrl.step;
 ev->u.ctrl.default_value = v4l2_ctrl.default_value;
}

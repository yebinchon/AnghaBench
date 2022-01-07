
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uvc_video_chain {int dummy; } ;
struct uvc_fh {int dummy; } ;
struct uvc_control_mapping {int dummy; } ;
struct uvc_control {int entity; } ;
typedef int s32 ;


 int V4L2_EVENT_CTRL_CH_FLAGS ;
 int V4L2_EVENT_CTRL_CH_VALUE ;
 scalar_t__ __uvc_ctrl_get (struct uvc_video_chain*,struct uvc_control*,struct uvc_control_mapping*,int *) ;
 int __uvc_find_control (int ,int ,struct uvc_control_mapping**,struct uvc_control**,int ) ;
 int uvc_ctrl_send_event (struct uvc_video_chain*,struct uvc_fh*,struct uvc_control*,struct uvc_control_mapping*,int ,int ) ;

__attribute__((used)) static void uvc_ctrl_send_slave_event(struct uvc_video_chain *chain,
 struct uvc_fh *handle, struct uvc_control *master, u32 slave_id)
{
 struct uvc_control_mapping *mapping = ((void*)0);
 struct uvc_control *ctrl = ((void*)0);
 u32 changes = V4L2_EVENT_CTRL_CH_FLAGS;
 s32 val = 0;

 __uvc_find_control(master->entity, slave_id, &mapping, &ctrl, 0);
 if (ctrl == ((void*)0))
  return;

 if (__uvc_ctrl_get(chain, ctrl, mapping, &val) == 0)
  changes |= V4L2_EVENT_CTRL_CH_VALUE;

 uvc_ctrl_send_event(chain, handle, ctrl, mapping, val, changes);
}

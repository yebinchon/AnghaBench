
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_ext_control {int value; int id; } ;
struct uvc_fh {int chain; } ;
struct uvc_control_mapping {scalar_t__ master_id; scalar_t__* slave_ids; } ;
struct TYPE_2__ {int flags; } ;
struct uvc_control {TYPE_1__ info; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int UVC_CTRL_FLAG_ASYNCHRONOUS ;
 scalar_t__ V4L2_EVENT_CTRL_CH_FLAGS ;
 scalar_t__ V4L2_EVENT_CTRL_CH_VALUE ;
 int uvc_ctrl_send_event (int ,struct uvc_fh*,struct uvc_control*,struct uvc_control_mapping*,int ,scalar_t__) ;
 int uvc_ctrl_send_slave_event (int ,struct uvc_fh*,struct uvc_control*,scalar_t__) ;
 scalar_t__ uvc_ctrl_xctrls_has_control (struct v4l2_ext_control const*,unsigned int,scalar_t__) ;
 struct uvc_control* uvc_find_control (int ,int ,struct uvc_control_mapping**) ;

__attribute__((used)) static void uvc_ctrl_send_events(struct uvc_fh *handle,
 const struct v4l2_ext_control *xctrls, unsigned int xctrls_count)
{
 struct uvc_control_mapping *mapping;
 struct uvc_control *ctrl;
 u32 changes = V4L2_EVENT_CTRL_CH_VALUE;
 unsigned int i;
 unsigned int j;

 for (i = 0; i < xctrls_count; ++i) {
  ctrl = uvc_find_control(handle->chain, xctrls[i].id, &mapping);

  if (ctrl->info.flags & UVC_CTRL_FLAG_ASYNCHRONOUS)

   continue;

  for (j = 0; j < ARRAY_SIZE(mapping->slave_ids); ++j) {
   u32 slave_id = mapping->slave_ids[j];

   if (!slave_id)
    break;





   if (uvc_ctrl_xctrls_has_control(xctrls, xctrls_count,
       slave_id))
    continue;

   uvc_ctrl_send_slave_event(handle->chain, handle, ctrl,
        slave_id);
  }





  if (mapping->master_id &&
      uvc_ctrl_xctrls_has_control(xctrls, xctrls_count,
      mapping->master_id))
   changes |= V4L2_EVENT_CTRL_CH_FLAGS;

  uvc_ctrl_send_event(handle->chain, handle, ctrl, mapping,
        xctrls[i].value, changes);
 }
}

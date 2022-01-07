
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uvc_video_chain {struct uvc_device* dev; } ;
struct uvc_ctrl_work {int work; struct uvc_control* ctrl; struct uvc_video_chain* chain; struct urb* urb; int const* data; } ;
struct uvc_device {struct uvc_ctrl_work async_ctrl; } ;
struct TYPE_2__ {int mappings; } ;
struct uvc_control {int * handle; TYPE_1__ info; } ;
struct urb {int dummy; } ;


 scalar_t__ list_empty (int *) ;
 int schedule_work (int *) ;

bool uvc_ctrl_status_event(struct urb *urb, struct uvc_video_chain *chain,
      struct uvc_control *ctrl, const u8 *data)
{
 struct uvc_device *dev = chain->dev;
 struct uvc_ctrl_work *w = &dev->async_ctrl;

 if (list_empty(&ctrl->info.mappings)) {
  ctrl->handle = ((void*)0);
  return 0;
 }

 w->data = data;
 w->urb = urb;
 w->chain = chain;
 w->ctrl = ctrl;

 schedule_work(&w->work);

 return 1;
}

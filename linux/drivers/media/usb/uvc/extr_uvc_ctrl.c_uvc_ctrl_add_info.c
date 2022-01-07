
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_device {TYPE_1__* udev; } ;
struct uvc_control_info {int size; int selector; int entity; int mappings; } ;
struct uvc_control {int initialized; int * uvc_data; TYPE_2__* entity; struct uvc_control_info info; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int devpath; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int UVC_CTRL_DATA_LAST ;
 int UVC_TRACE_CONTROL ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int uvc_ctrl_get_flags (struct uvc_device*,struct uvc_control*,struct uvc_control_info*) ;
 int uvc_trace (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int uvc_ctrl_add_info(struct uvc_device *dev, struct uvc_control *ctrl,
 const struct uvc_control_info *info)
{
 int ret = 0;

 ctrl->info = *info;
 INIT_LIST_HEAD(&ctrl->info.mappings);


 ctrl->uvc_data = kzalloc(ctrl->info.size * UVC_CTRL_DATA_LAST + 1,
     GFP_KERNEL);
 if (ctrl->uvc_data == ((void*)0)) {
  ret = -ENOMEM;
  goto done;
 }






 uvc_ctrl_get_flags(dev, ctrl, &ctrl->info);

 ctrl->initialized = 1;

 uvc_trace(UVC_TRACE_CONTROL, "Added control %pUl/%u to device %s "
  "entity %u\n", ctrl->info.entity, ctrl->info.selector,
  dev->udev->devpath, ctrl->entity->id);

done:
 if (ret < 0)
  kfree(ctrl->uvc_data);
 return ret;
}

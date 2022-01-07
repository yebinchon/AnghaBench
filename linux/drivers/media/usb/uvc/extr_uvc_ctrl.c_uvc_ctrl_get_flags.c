
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uvc_device {int intfnum; } ;
struct uvc_control_info {int flags; int selector; } ;
struct uvc_control {TYPE_1__* entity; } ;
struct TYPE_2__ {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UVC_CONTROL_CAP_ASYNCHRONOUS ;
 int UVC_CONTROL_CAP_AUTOUPDATE ;
 int UVC_CONTROL_CAP_GET ;
 int UVC_CONTROL_CAP_SET ;
 int UVC_CTRL_FLAG_ASYNCHRONOUS ;
 int UVC_CTRL_FLAG_AUTO_UPDATE ;
 int UVC_CTRL_FLAG_GET_CUR ;
 int UVC_CTRL_FLAG_SET_CUR ;
 int UVC_GET_INFO ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int uvc_query_ctrl (struct uvc_device*,int ,int ,int ,int ,int*,int) ;

__attribute__((used)) static int uvc_ctrl_get_flags(struct uvc_device *dev,
         const struct uvc_control *ctrl,
         struct uvc_control_info *info)
{
 u8 *data;
 int ret;

 data = kmalloc(1, GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 ret = uvc_query_ctrl(dev, UVC_GET_INFO, ctrl->entity->id, dev->intfnum,
        info->selector, data, 1);
 if (!ret)
  info->flags |= (data[0] & UVC_CONTROL_CAP_GET ?
    UVC_CTRL_FLAG_GET_CUR : 0)
       | (data[0] & UVC_CONTROL_CAP_SET ?
    UVC_CTRL_FLAG_SET_CUR : 0)
       | (data[0] & UVC_CONTROL_CAP_AUTOUPDATE ?
    UVC_CTRL_FLAG_AUTO_UPDATE : 0)
       | (data[0] & UVC_CONTROL_CAP_ASYNCHRONOUS ?
    UVC_CTRL_FLAG_ASYNCHRONOUS : 0);

 kfree(data);
 return ret;
}

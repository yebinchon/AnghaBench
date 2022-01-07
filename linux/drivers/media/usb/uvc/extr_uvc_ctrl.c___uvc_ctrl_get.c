
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvc_video_chain {TYPE_3__* dev; } ;
struct uvc_control_mapping {int dummy; } ;
struct TYPE_5__ {int flags; int size; int selector; } ;
struct uvc_control {int loaded; TYPE_2__ info; TYPE_1__* entity; } ;
typedef int s32 ;
struct TYPE_6__ {int intfnum; } ;
struct TYPE_4__ {int id; } ;


 int EACCES ;
 int UVC_CTRL_DATA_CURRENT ;
 int UVC_CTRL_FLAG_GET_CUR ;
 int UVC_GET_CUR ;
 int __uvc_ctrl_get_value (struct uvc_control_mapping*,int ) ;
 int uvc_ctrl_data (struct uvc_control*,int ) ;
 int uvc_query_ctrl (TYPE_3__*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int __uvc_ctrl_get(struct uvc_video_chain *chain,
 struct uvc_control *ctrl, struct uvc_control_mapping *mapping,
 s32 *value)
{
 int ret;

 if ((ctrl->info.flags & UVC_CTRL_FLAG_GET_CUR) == 0)
  return -EACCES;

 if (!ctrl->loaded) {
  ret = uvc_query_ctrl(chain->dev, UVC_GET_CUR, ctrl->entity->id,
    chain->dev->intfnum, ctrl->info.selector,
    uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT),
    ctrl->info.size);
  if (ret < 0)
   return ret;

  ctrl->loaded = 1;
 }

 *value = __uvc_ctrl_get_value(mapping,
    uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT));

 return 0;
}

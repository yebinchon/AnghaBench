
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_entity {unsigned int ncontrols; struct uvc_control* controls; } ;
struct uvc_device {int intfnum; } ;
struct TYPE_4__ {int flags; int size; int selector; } ;
struct uvc_control {scalar_t__ dirty; TYPE_2__ info; TYPE_1__* entity; scalar_t__ loaded; int initialized; } ;
struct TYPE_3__ {int id; } ;


 int UVC_CTRL_DATA_BACKUP ;
 int UVC_CTRL_DATA_CURRENT ;
 int UVC_CTRL_FLAG_AUTO_UPDATE ;
 int UVC_CTRL_FLAG_GET_CUR ;
 int UVC_SET_CUR ;
 int memcpy (int ,int ,int ) ;
 int uvc_ctrl_data (struct uvc_control*,int ) ;
 int uvc_query_ctrl (struct uvc_device*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int uvc_ctrl_commit_entity(struct uvc_device *dev,
 struct uvc_entity *entity, int rollback)
{
 struct uvc_control *ctrl;
 unsigned int i;
 int ret;

 if (entity == ((void*)0))
  return 0;

 for (i = 0; i < entity->ncontrols; ++i) {
  ctrl = &entity->controls[i];
  if (!ctrl->initialized)
   continue;







  if (ctrl->info.flags & UVC_CTRL_FLAG_AUTO_UPDATE ||
      !(ctrl->info.flags & UVC_CTRL_FLAG_GET_CUR))
   ctrl->loaded = 0;

  if (!ctrl->dirty)
   continue;

  if (!rollback)
   ret = uvc_query_ctrl(dev, UVC_SET_CUR, ctrl->entity->id,
    dev->intfnum, ctrl->info.selector,
    uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT),
    ctrl->info.size);
  else
   ret = 0;

  if (rollback || ret < 0)
   memcpy(uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT),
          uvc_ctrl_data(ctrl, UVC_CTRL_DATA_BACKUP),
          ctrl->info.size);

  ctrl->dirty = 0;

  if (ret < 0)
   return ret;
 }

 return 0;
}

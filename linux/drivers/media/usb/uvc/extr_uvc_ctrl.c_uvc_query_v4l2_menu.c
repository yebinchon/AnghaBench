
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct v4l2_querymenu {size_t index; int name; void* id; } ;
struct uvc_video_chain {int ctrl_mutex; } ;
struct uvc_menu_info {int value; int name; } ;
struct uvc_control_mapping {scalar_t__ v4l2_type; size_t menu_count; scalar_t__ data_type; int (* get ) (struct uvc_control_mapping*,int ,int ) ;struct uvc_menu_info* menu_info; } ;
struct TYPE_2__ {int flags; } ;
struct uvc_control {int cached; TYPE_1__ info; } ;
typedef int s32 ;


 int EINVAL ;
 int ERESTARTSYS ;
 int UVC_CTRL_DATA_RES ;
 scalar_t__ UVC_CTRL_DATA_TYPE_BITMASK ;
 int UVC_CTRL_FLAG_GET_RES ;
 int UVC_GET_RES ;
 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 int memset (struct v4l2_querymenu*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int strscpy (int ,int ,int) ;
 int stub1 (struct uvc_control_mapping*,int ,int ) ;
 int uvc_ctrl_data (struct uvc_control*,int ) ;
 int uvc_ctrl_populate_cache (struct uvc_video_chain*,struct uvc_control*) ;
 struct uvc_control* uvc_find_control (struct uvc_video_chain*,void*,struct uvc_control_mapping**) ;

int uvc_query_v4l2_menu(struct uvc_video_chain *chain,
 struct v4l2_querymenu *query_menu)
{
 const struct uvc_menu_info *menu_info;
 struct uvc_control_mapping *mapping;
 struct uvc_control *ctrl;
 u32 index = query_menu->index;
 u32 id = query_menu->id;
 int ret;

 memset(query_menu, 0, sizeof(*query_menu));
 query_menu->id = id;
 query_menu->index = index;

 ret = mutex_lock_interruptible(&chain->ctrl_mutex);
 if (ret < 0)
  return -ERESTARTSYS;

 ctrl = uvc_find_control(chain, query_menu->id, &mapping);
 if (ctrl == ((void*)0) || mapping->v4l2_type != V4L2_CTRL_TYPE_MENU) {
  ret = -EINVAL;
  goto done;
 }

 if (query_menu->index >= mapping->menu_count) {
  ret = -EINVAL;
  goto done;
 }

 menu_info = &mapping->menu_info[query_menu->index];

 if (mapping->data_type == UVC_CTRL_DATA_TYPE_BITMASK &&
     (ctrl->info.flags & UVC_CTRL_FLAG_GET_RES)) {
  s32 bitmap;

  if (!ctrl->cached) {
   ret = uvc_ctrl_populate_cache(chain, ctrl);
   if (ret < 0)
    goto done;
  }

  bitmap = mapping->get(mapping, UVC_GET_RES,
          uvc_ctrl_data(ctrl, UVC_CTRL_DATA_RES));
  if (!(bitmap & menu_info->value)) {
   ret = -EINVAL;
   goto done;
  }
 }

 strscpy(query_menu->name, menu_info->name, sizeof(query_menu->name));

done:
 mutex_unlock(&chain->ctrl_mutex);
 return ret;
}

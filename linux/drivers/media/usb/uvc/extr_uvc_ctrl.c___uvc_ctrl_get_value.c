
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvc_menu_info {unsigned int value; } ;
struct uvc_control_mapping {unsigned int (* get ) (struct uvc_control_mapping*,int ,int const*) ;scalar_t__ v4l2_type; unsigned int menu_count; struct uvc_menu_info* menu_info; } ;
typedef unsigned int s32 ;


 int UVC_GET_CUR ;
 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 unsigned int stub1 (struct uvc_control_mapping*,int ,int const*) ;

__attribute__((used)) static s32 __uvc_ctrl_get_value(struct uvc_control_mapping *mapping,
    const u8 *data)
{
 s32 value = mapping->get(mapping, UVC_GET_CUR, data);

 if (mapping->v4l2_type == V4L2_CTRL_TYPE_MENU) {
  const struct uvc_menu_info *menu = mapping->menu_info;
  unsigned int i;

  for (i = 0; i < mapping->menu_count; ++i, ++menu) {
   if (menu->value == value) {
    value = i;
    break;
   }
  }
 }

 return value;
}

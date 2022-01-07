
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_device {int dummy; } ;
struct uvc_control_mapping {int menu_count; int name; int list; int * set; int * get; struct uvc_control_mapping const* menu_info; int ev_subs; } ;
struct TYPE_2__ {int selector; int entity; int mappings; } ;
struct uvc_control {TYPE_1__ info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int UVC_TRACE_CONTROL ;
 int kfree (struct uvc_control_mapping*) ;
 void* kmemdup (struct uvc_control_mapping const*,unsigned int,int ) ;
 int list_add_tail (int *,int *) ;
 int * uvc_get_le_value ;
 int * uvc_set_le_value ;
 int uvc_trace (int ,char*,int ,int ,int ) ;

__attribute__((used)) static int __uvc_ctrl_add_mapping(struct uvc_device *dev,
 struct uvc_control *ctrl, const struct uvc_control_mapping *mapping)
{
 struct uvc_control_mapping *map;
 unsigned int size;





 map = kmemdup(mapping, sizeof(*mapping), GFP_KERNEL);
 if (map == ((void*)0))
  return -ENOMEM;

 INIT_LIST_HEAD(&map->ev_subs);

 size = sizeof(*mapping->menu_info) * mapping->menu_count;
 map->menu_info = kmemdup(mapping->menu_info, size, GFP_KERNEL);
 if (map->menu_info == ((void*)0)) {
  kfree(map);
  return -ENOMEM;
 }

 if (map->get == ((void*)0))
  map->get = uvc_get_le_value;
 if (map->set == ((void*)0))
  map->set = uvc_set_le_value;

 list_add_tail(&map->list, &ctrl->info.mappings);
 uvc_trace(UVC_TRACE_CONTROL,
  "Adding mapping '%s' to control %pUl/%u.\n",
  map->name, ctrl->info.entity, ctrl->info.selector);

 return 0;
}

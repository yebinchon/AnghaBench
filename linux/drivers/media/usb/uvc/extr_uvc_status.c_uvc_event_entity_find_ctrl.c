
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct uvc_entity {unsigned int ncontrols; struct uvc_control* controls; } ;
struct TYPE_2__ {scalar_t__ selector; } ;
struct uvc_control {TYPE_1__ info; } ;



__attribute__((used)) static struct uvc_control *uvc_event_entity_find_ctrl(struct uvc_entity *entity,
            u8 selector)
{
 struct uvc_control *ctrl;
 unsigned int i;

 for (i = 0, ctrl = entity->controls; i < entity->ncontrols; i++, ctrl++)
  if (ctrl->info.selector == selector)
   return ctrl;

 return ((void*)0);
}

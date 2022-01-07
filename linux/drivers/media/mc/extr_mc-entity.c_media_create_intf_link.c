
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct media_link {int flags; int graph_obj; struct media_entity* entity; struct media_interface* intf; } ;
struct TYPE_2__ {int mdev; } ;
struct media_interface {TYPE_1__ graph_obj; int links; } ;
struct media_entity {int dummy; } ;


 int MEDIA_GRAPH_LINK ;
 int MEDIA_LNK_FL_INTERFACE_LINK ;
 struct media_link* media_add_link (int *) ;
 int media_gobj_create (int ,int ,int *) ;

struct media_link *media_create_intf_link(struct media_entity *entity,
         struct media_interface *intf,
         u32 flags)
{
 struct media_link *link;

 link = media_add_link(&intf->links);
 if (link == ((void*)0))
  return ((void*)0);

 link->intf = intf;
 link->entity = entity;
 link->flags = flags | MEDIA_LNK_FL_INTERFACE_LINK;


 media_gobj_create(intf->graph_obj.mdev, MEDIA_GRAPH_LINK,
   &link->graph_obj);

 return link;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct media_interface {int graph_obj; int links; void* flags; void* type; } ;
struct media_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int media_gobj_create (struct media_device*,void*,int *) ;

__attribute__((used)) static void media_interface_init(struct media_device *mdev,
     struct media_interface *intf,
     u32 gobj_type,
     u32 intf_type, u32 flags)
{
 intf->type = intf_type;
 intf->flags = flags;
 INIT_LIST_HEAD(&intf->links);

 media_gobj_create(mdev, gobj_type, &intf->graph_obj);
}

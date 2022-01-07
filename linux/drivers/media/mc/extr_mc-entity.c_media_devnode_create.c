
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct media_intf_devnode {int intf; void* minor; void* major; } ;
struct media_device {int dummy; } ;


 int GFP_KERNEL ;
 int MEDIA_GRAPH_INTF_DEVNODE ;
 struct media_intf_devnode* kzalloc (int,int ) ;
 int media_interface_init (struct media_device*,int *,int ,void*,void*) ;

struct media_intf_devnode *media_devnode_create(struct media_device *mdev,
      u32 type, u32 flags,
      u32 major, u32 minor)
{
 struct media_intf_devnode *devnode;

 devnode = kzalloc(sizeof(*devnode), GFP_KERNEL);
 if (!devnode)
  return ((void*)0);

 devnode->major = major;
 devnode->minor = minor;

 media_interface_init(mdev, &devnode->intf, MEDIA_GRAPH_INTF_DEVNODE,
        type, flags);

 return devnode;
}

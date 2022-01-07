
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct media_device* mdev; } ;
struct media_interface {TYPE_1__ graph_obj; } ;
struct media_device {int graph_mutex; } ;


 int __media_remove_intf_links (struct media_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void media_remove_intf_links(struct media_interface *intf)
{
 struct media_device *mdev = intf->graph_obj.mdev;


 if (mdev == ((void*)0))
  return;

 mutex_lock(&mdev->graph_mutex);
 __media_remove_intf_links(intf);
 mutex_unlock(&mdev->graph_mutex);
}

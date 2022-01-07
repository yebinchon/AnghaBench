
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int graph_obj; } ;
struct media_intf_devnode {TYPE_1__ intf; } ;


 int kfree (struct media_intf_devnode*) ;
 int media_gobj_destroy (int *) ;
 int media_remove_intf_links (TYPE_1__*) ;

void media_devnode_remove(struct media_intf_devnode *devnode)
{
 media_remove_intf_links(&devnode->intf);
 media_gobj_destroy(&devnode->intf.graph_obj);
 kfree(devnode);
}

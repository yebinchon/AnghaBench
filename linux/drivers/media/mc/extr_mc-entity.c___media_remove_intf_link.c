
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_link {int graph_obj; int list; } ;


 int kfree (struct media_link*) ;
 int list_del (int *) ;
 int media_gobj_destroy (int *) ;

void __media_remove_intf_link(struct media_link *link)
{
 list_del(&link->list);
 media_gobj_destroy(&link->graph_obj);
 kfree(link);
}

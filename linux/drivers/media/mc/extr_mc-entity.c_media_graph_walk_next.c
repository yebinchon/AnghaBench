
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct media_graph {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mdev; } ;
struct media_entity {int name; TYPE_2__ graph_obj; } ;
struct TYPE_6__ {int links; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int * link_top (struct media_graph*) ;
 int media_graph_walk_iter (struct media_graph*) ;
 struct media_entity* stack_pop (struct media_graph*) ;
 TYPE_3__* stack_top (struct media_graph*) ;

struct media_entity *media_graph_walk_next(struct media_graph *graph)
{
 struct media_entity *entity;

 if (stack_top(graph) == ((void*)0))
  return ((void*)0);






 while (link_top(graph) != &stack_top(graph)->links)
  media_graph_walk_iter(graph);

 entity = stack_pop(graph);
 dev_dbg(entity->graph_obj.mdev->dev,
  "walk: returning entity '%s'\n", entity->name);

 return entity;
}

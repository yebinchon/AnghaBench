
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct media_graph {size_t top; TYPE_3__* stack; int ent_enum; } ;
struct TYPE_5__ {TYPE_1__* mdev; } ;
struct media_entity {int name; TYPE_2__ graph_obj; } ;
struct TYPE_6__ {int * entity; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int media_entity_enum_set (int *,struct media_entity*) ;
 int media_entity_enum_zero (int *) ;
 int stack_push (struct media_graph*,struct media_entity*) ;

void media_graph_walk_start(struct media_graph *graph,
       struct media_entity *entity)
{
 media_entity_enum_zero(&graph->ent_enum);
 media_entity_enum_set(&graph->ent_enum, entity);

 graph->top = 0;
 graph->stack[graph->top].entity = ((void*)0);
 stack_push(graph, entity);
 dev_dbg(entity->graph_obj.mdev->dev,
  "begin graph walk at '%s'\n", entity->name);
}

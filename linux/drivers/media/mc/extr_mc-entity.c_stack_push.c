
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct media_graph {int top; TYPE_2__* stack; } ;
struct TYPE_3__ {int next; } ;
struct media_entity {TYPE_1__ links; } ;
struct TYPE_4__ {struct media_entity* entity; int link; } ;


 int MEDIA_ENTITY_ENUM_MAX_DEPTH ;
 int WARN_ON (int) ;

__attribute__((used)) static void stack_push(struct media_graph *graph,
         struct media_entity *entity)
{
 if (graph->top == MEDIA_ENTITY_ENUM_MAX_DEPTH - 1) {
  WARN_ON(1);
  return;
 }
 graph->top++;
 graph->stack[graph->top].link = entity->links.next;
 graph->stack[graph->top].entity = entity;
}

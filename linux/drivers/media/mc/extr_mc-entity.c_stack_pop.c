
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_graph {size_t top; TYPE_1__* stack; } ;
struct media_entity {int dummy; } ;
struct TYPE_2__ {struct media_entity* entity; } ;



__attribute__((used)) static struct media_entity *stack_pop(struct media_graph *graph)
{
 struct media_entity *entity;

 entity = graph->stack[graph->top].entity;
 graph->top--;

 return entity;
}

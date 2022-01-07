
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_graph {int ent_enum; } ;


 int media_entity_enum_cleanup (int *) ;

void media_graph_walk_cleanup(struct media_graph *graph)
{
 media_entity_enum_cleanup(&graph->ent_enum);
}

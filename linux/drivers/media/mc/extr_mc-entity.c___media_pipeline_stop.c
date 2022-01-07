
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_graph {int dummy; } ;
struct media_pipeline {int streaming_count; struct media_graph graph; } ;
struct media_entity {scalar_t__ stream_count; struct media_pipeline* pipe; } ;


 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int media_graph_walk_cleanup (struct media_graph*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;

void __media_pipeline_stop(struct media_entity *entity)
{
 struct media_graph *graph = &entity->pipe->graph;
 struct media_pipeline *pipe = entity->pipe;





 if (WARN_ON(!pipe))
  return;

 media_graph_walk_start(graph, entity);

 while ((entity = media_graph_walk_next(graph))) {

  if (!WARN_ON_ONCE(entity->stream_count <= 0)) {
   entity->stream_count--;
   if (entity->stream_count == 0)
    entity->pipe = ((void*)0);
  }
 }

 if (!--pipe->streaming_count)
  media_graph_walk_cleanup(graph);

}

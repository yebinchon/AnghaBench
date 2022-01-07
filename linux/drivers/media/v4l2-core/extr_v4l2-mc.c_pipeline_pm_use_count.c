
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_graph {int dummy; } ;
struct media_entity {scalar_t__ use_count; } ;


 scalar_t__ is_media_entity_v4l2_video_device (struct media_entity*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;

__attribute__((used)) static int pipeline_pm_use_count(struct media_entity *entity,
 struct media_graph *graph)
{
 int use = 0;

 media_graph_walk_start(graph, entity);

 while ((entity = media_graph_walk_next(graph))) {
  if (is_media_entity_v4l2_video_device(entity))
   use += entity->use_count;
 }

 return use;
}

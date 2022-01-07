
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_graph {int dummy; } ;
struct media_entity {int dummy; } ;


 scalar_t__ is_media_entity_v4l2_subdev (struct media_entity*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;
 int pipeline_pm_power_one (struct media_entity*,int) ;

__attribute__((used)) static int pipeline_pm_power(struct media_entity *entity, int change,
 struct media_graph *graph)
{
 struct media_entity *first = entity;
 int ret = 0;

 if (!change)
  return 0;

 media_graph_walk_start(graph, entity);

 while (!ret && (entity = media_graph_walk_next(graph)))
  if (is_media_entity_v4l2_subdev(entity))
   ret = pipeline_pm_power_one(entity, change);

 if (!ret)
  return ret;

 media_graph_walk_start(graph, first);

 while ((first = media_graph_walk_next(graph))
        && first != entity)
  if (is_media_entity_v4l2_subdev(first))
   pipeline_pm_power_one(first, -change);

 return ret;
}

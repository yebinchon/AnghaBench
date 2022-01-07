
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_graph {int dummy; } ;
struct media_entity {int dummy; } ;


 int __fimc_md_modify_pipeline (struct media_entity*,int) ;
 int is_media_entity_v4l2_video_device (struct media_entity*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;

__attribute__((used)) static int __fimc_md_modify_pipelines(struct media_entity *entity, bool enable,
          struct media_graph *graph)
{
 struct media_entity *entity_err = entity;
 int ret;







 media_graph_walk_start(graph, entity);

 while ((entity = media_graph_walk_next(graph))) {
  if (!is_media_entity_v4l2_video_device(entity))
   continue;

  ret = __fimc_md_modify_pipeline(entity, enable);

  if (ret < 0)
   goto err;
 }

 return 0;

err:
 media_graph_walk_start(graph, entity_err);

 while ((entity_err = media_graph_walk_next(graph))) {
  if (!is_media_entity_v4l2_video_device(entity_err))
   continue;

  __fimc_md_modify_pipeline(entity_err, !enable);

  if (entity_err == entity)
   break;
 }

 return ret;
}

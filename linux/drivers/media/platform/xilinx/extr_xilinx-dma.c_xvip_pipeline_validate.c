
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xvip_pipeline {unsigned int num_dmas; struct xvip_dma* output; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {struct media_device* mdev; } ;
struct media_entity {scalar_t__ function; TYPE_2__ graph_obj; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct xvip_dma {TYPE_3__ pad; TYPE_1__ video; } ;
struct media_graph {int dummy; } ;
struct media_device {int graph_mutex; } ;


 int EPIPE ;
 scalar_t__ MEDIA_ENT_F_IO_V4L ;
 int MEDIA_PAD_FL_SINK ;
 int media_entity_to_video_device (struct media_entity*) ;
 int media_graph_walk_cleanup (struct media_graph*) ;
 int media_graph_walk_init (struct media_graph*,struct media_device*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct xvip_dma* to_xvip_dma (int ) ;

__attribute__((used)) static int xvip_pipeline_validate(struct xvip_pipeline *pipe,
      struct xvip_dma *start)
{
 struct media_graph graph;
 struct media_entity *entity = &start->video.entity;
 struct media_device *mdev = entity->graph_obj.mdev;
 unsigned int num_inputs = 0;
 unsigned int num_outputs = 0;
 int ret;

 mutex_lock(&mdev->graph_mutex);


 ret = media_graph_walk_init(&graph, mdev);
 if (ret) {
  mutex_unlock(&mdev->graph_mutex);
  return ret;
 }

 media_graph_walk_start(&graph, entity);

 while ((entity = media_graph_walk_next(&graph))) {
  struct xvip_dma *dma;

  if (entity->function != MEDIA_ENT_F_IO_V4L)
   continue;

  dma = to_xvip_dma(media_entity_to_video_device(entity));

  if (dma->pad.flags & MEDIA_PAD_FL_SINK) {
   pipe->output = dma;
   num_outputs++;
  } else {
   num_inputs++;
  }
 }

 mutex_unlock(&mdev->graph_mutex);

 media_graph_walk_cleanup(&graph);


 if (num_outputs != 1 || num_inputs > 1)
  return -EPIPE;

 pipe->num_dmas = num_inputs + num_outputs;

 return 0;
}

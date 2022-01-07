
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct media_device* mdev; } ;
struct media_entity {TYPE_2__ graph_obj; } ;
struct TYPE_7__ {struct media_entity entity; } ;
struct vsp1_video {TYPE_6__* vsp1; TYPE_1__ video; } ;
struct TYPE_9__ {size_t index; } ;
struct vsp1_rwpf {TYPE_4__* video; TYPE_3__ entity; } ;
struct vsp1_pipeline {scalar_t__ num_inputs; struct vsp1_rwpf* output; struct vsp1_rwpf** inputs; struct vsp1_entity* hgt; struct vsp1_entity* hgo; struct vsp1_entity* brx; struct vsp1_entity* lif; int entities; } ;
struct vsp1_entity {int type; struct vsp1_pipeline* pipe; int list_pipe; } ;
struct v4l2_subdev {int dummy; } ;
struct media_graph {int dummy; } ;
struct media_device {int dummy; } ;
struct TYPE_12__ {TYPE_5__* info; } ;
struct TYPE_11__ {unsigned int rpf_count; } ;
struct TYPE_10__ {scalar_t__ pipe_index; } ;


 int EPIPE ;







 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 int list_add_tail (int *,int *) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int media_graph_walk_cleanup (struct media_graph*) ;
 int media_graph_walk_init (struct media_graph*,struct media_device*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;
 struct vsp1_rwpf* to_rwpf (struct v4l2_subdev*) ;
 struct vsp1_entity* to_vsp1_entity (struct v4l2_subdev*) ;
 int vsp1_video_pipeline_build_branch (struct vsp1_pipeline*,struct vsp1_rwpf*,struct vsp1_rwpf*) ;

__attribute__((used)) static int vsp1_video_pipeline_build(struct vsp1_pipeline *pipe,
         struct vsp1_video *video)
{
 struct media_graph graph;
 struct media_entity *entity = &video->video.entity;
 struct media_device *mdev = entity->graph_obj.mdev;
 unsigned int i;
 int ret;


 ret = media_graph_walk_init(&graph, mdev);
 if (ret)
  return ret;

 media_graph_walk_start(&graph, entity);

 while ((entity = media_graph_walk_next(&graph))) {
  struct v4l2_subdev *subdev;
  struct vsp1_rwpf *rwpf;
  struct vsp1_entity *e;

  if (!is_media_entity_v4l2_subdev(entity))
   continue;

  subdev = media_entity_to_v4l2_subdev(entity);
  e = to_vsp1_entity(subdev);
  list_add_tail(&e->list_pipe, &pipe->entities);
  e->pipe = pipe;

  switch (e->type) {
  case 129:
   rwpf = to_rwpf(subdev);
   pipe->inputs[rwpf->entity.index] = rwpf;
   rwpf->video->pipe_index = ++pipe->num_inputs;
   break;

  case 128:
   rwpf = to_rwpf(subdev);
   pipe->output = rwpf;
   rwpf->video->pipe_index = 0;
   break;

  case 130:
   pipe->lif = e;
   break;

  case 133:
  case 134:
   pipe->brx = e;
   break;

  case 132:
   pipe->hgo = e;
   break;

  case 131:
   pipe->hgt = e;
   break;

  default:
   break;
  }
 }

 media_graph_walk_cleanup(&graph);


 if (pipe->num_inputs == 0 || !pipe->output)
  return -EPIPE;





 for (i = 0; i < video->vsp1->info->rpf_count; ++i) {
  if (!pipe->inputs[i])
   continue;

  ret = vsp1_video_pipeline_build_branch(pipe, pipe->inputs[i],
             pipe->output);
  if (ret < 0)
   return ret;
 }

 return 0;
}

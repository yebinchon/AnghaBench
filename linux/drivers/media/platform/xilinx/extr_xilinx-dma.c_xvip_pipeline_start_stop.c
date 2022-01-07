
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xvip_pipeline {struct xvip_dma* output; } ;
struct media_entity {struct media_pad* pads; } ;
struct TYPE_2__ {struct media_entity entity; } ;
struct xvip_dma {TYPE_1__ video; } ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;


 int ENOIOCTLCMD ;
 int MEDIA_PAD_FL_SINK ;
 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int s_stream ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 int video ;

__attribute__((used)) static int xvip_pipeline_start_stop(struct xvip_pipeline *pipe, bool start)
{
 struct xvip_dma *dma = pipe->output;
 struct media_entity *entity;
 struct media_pad *pad;
 struct v4l2_subdev *subdev;
 int ret;

 entity = &dma->video.entity;
 while (1) {
  pad = &entity->pads[0];
  if (!(pad->flags & MEDIA_PAD_FL_SINK))
   break;

  pad = media_entity_remote_pad(pad);
  if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
   break;

  entity = pad->entity;
  subdev = media_entity_to_v4l2_subdev(entity);

  ret = v4l2_subdev_call(subdev, video, s_stream, start);
  if (start && ret < 0 && ret != -ENOIOCTLCMD)
   return ret;
 }

 return 0;
}

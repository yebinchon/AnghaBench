
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_stream {int pipe_size; struct vimc_ent_device** ved_pipeline; } ;
struct vimc_ent_device {int ent; } ;
struct v4l2_subdev {int dummy; } ;


 int is_media_entity_v4l2_subdev (int ) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int s_stream ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int ) ;
 int video ;

__attribute__((used)) static void vimc_streamer_pipeline_terminate(struct vimc_stream *stream)
{
 struct vimc_ent_device *ved;
 struct v4l2_subdev *sd;

 while (stream->pipe_size) {
  stream->pipe_size--;
  ved = stream->ved_pipeline[stream->pipe_size];
  stream->ved_pipeline[stream->pipe_size] = ((void*)0);

  if (!is_media_entity_v4l2_subdev(ved->ent))
   continue;

  sd = media_entity_to_v4l2_subdev(ved->ent);
  v4l2_subdev_call(sd, video, s_stream, 0);
 }
}

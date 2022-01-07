
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct media_pad {int entity; } ;
struct media_entity {unsigned int num_pads; TYPE_1__* pads; } ;
struct TYPE_2__ {int flags; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int MEDIA_PAD_FL_SOURCE ;
 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (TYPE_1__*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int s_stream ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 int video ;

int vimc_pipeline_s_stream(struct media_entity *ent, int enable)
{
 struct v4l2_subdev *sd;
 struct media_pad *pad;
 unsigned int i;
 int ret;

 for (i = 0; i < ent->num_pads; i++) {
  if (ent->pads[i].flags & MEDIA_PAD_FL_SOURCE)
   continue;


  pad = media_entity_remote_pad(&ent->pads[i]);
  if (!pad)
   continue;

  if (!is_media_entity_v4l2_subdev(pad->entity))
   return -EINVAL;

  sd = media_entity_to_v4l2_subdev(pad->entity);
  ret = v4l2_subdev_call(sd, video, s_stream, enable);
  if (ret && ret != -ENOIOCTLCMD)
   return ret;
 }

 return 0;
}

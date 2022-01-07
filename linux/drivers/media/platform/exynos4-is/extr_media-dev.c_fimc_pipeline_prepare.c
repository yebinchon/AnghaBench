
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_entity {int num_pads; struct media_pad* pads; } ;
struct v4l2_subdev {int grp_id; struct media_entity entity; } ;
struct media_pad {int flags; int entity; } ;
struct fimc_pipeline {struct v4l2_subdev** subdevs; } ;
struct fimc_md {int dummy; } ;
 size_t IDX_CSIS ;
 size_t IDX_FIMC ;
 size_t IDX_FLITE ;
 size_t IDX_IS_ISP ;
 int IDX_MAX ;
 size_t IDX_SENSOR ;
 int MEDIA_PAD_FL_SINK ;
 int __setup_sensor_notification (struct fimc_md*,struct v4l2_subdev*,struct v4l2_subdev*) ;
 struct fimc_md* entity_to_fimc_mdev (struct media_entity*) ;
 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;

__attribute__((used)) static void fimc_pipeline_prepare(struct fimc_pipeline *p,
     struct media_entity *me)
{
 struct fimc_md *fmd = entity_to_fimc_mdev(me);
 struct v4l2_subdev *sd;
 struct v4l2_subdev *sensor = ((void*)0);
 int i;

 for (i = 0; i < IDX_MAX; i++)
  p->subdevs[i] = ((void*)0);

 while (1) {
  struct media_pad *pad = ((void*)0);


  for (i = 0; i < me->num_pads; i++) {
   struct media_pad *spad = &me->pads[i];
   if (!(spad->flags & MEDIA_PAD_FL_SINK))
    continue;
   pad = media_entity_remote_pad(spad);
   if (pad)
    break;
  }

  if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
   break;
  sd = media_entity_to_v4l2_subdev(pad->entity);

  switch (sd->grp_id) {
  case 128:
   sensor = sd;

  case 130:
   p->subdevs[IDX_SENSOR] = sd;
   break;
  case 133:
   p->subdevs[IDX_CSIS] = sd;
   break;
  case 129:
   p->subdevs[IDX_FLITE] = sd;
   break;
  case 132:
   p->subdevs[IDX_FIMC] = sd;
   break;
  case 131:
   p->subdevs[IDX_IS_ISP] = sd;
   break;
  default:
   break;
  }
  me = &sd->entity;
  if (me->num_pads == 1)
   break;
 }

 if (sensor && p->subdevs[IDX_FIMC])
  __setup_sensor_notification(fmd, sensor, p->subdevs[IDX_FIMC]);
}

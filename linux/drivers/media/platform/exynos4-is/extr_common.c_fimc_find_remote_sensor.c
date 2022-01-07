
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct media_pad* pads; } ;
struct v4l2_subdev {scalar_t__ grp_id; TYPE_1__ entity; } ;
struct media_pad {int flags; int entity; } ;
struct media_entity {struct media_pad* pads; } ;


 scalar_t__ GRP_ID_FIMC_IS_SENSOR ;
 scalar_t__ GRP_ID_SENSOR ;
 int MEDIA_PAD_FL_SINK ;
 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;

struct v4l2_subdev *fimc_find_remote_sensor(struct media_entity *entity)
{
 struct media_pad *pad = &entity->pads[0];
 struct v4l2_subdev *sd;

 while (pad->flags & MEDIA_PAD_FL_SINK) {

  pad = media_entity_remote_pad(pad);
  if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
   break;

  sd = media_entity_to_v4l2_subdev(pad->entity);

  if (sd->grp_id == GRP_ID_FIMC_IS_SENSOR ||
      sd->grp_id == GRP_ID_SENSOR)
   return sd;

  pad = &sd->entity.pads[0];
 }
 return ((void*)0);
}

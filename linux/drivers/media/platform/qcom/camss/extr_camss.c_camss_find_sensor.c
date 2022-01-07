
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {scalar_t__ function; struct media_pad* pads; } ;


 scalar_t__ MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SINK ;
 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;

struct media_entity *camss_find_sensor(struct media_entity *entity)
{
 struct media_pad *pad;

 while (1) {
  pad = &entity->pads[0];
  if (!(pad->flags & MEDIA_PAD_FL_SINK))
   return ((void*)0);

  pad = media_entity_remote_pad(pad);
  if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
   return ((void*)0);

  entity = pad->entity;

  if (entity->function == MEDIA_ENT_F_CAM_SENSOR)
   return entity;
 }
}

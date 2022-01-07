
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct vsp1_uds {TYPE_1__ entity; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct v4l2_mbus_framefmt {unsigned int width; } ;


 int UDS_PAD_SINK ;
 int UDS_PAD_SOURCE ;
 struct vsp1_uds* to_uds (int *) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,int ,int ) ;

__attribute__((used)) static unsigned int uds_max_width(struct vsp1_entity *entity,
      struct vsp1_pipeline *pipe)
{
 struct vsp1_uds *uds = to_uds(&entity->subdev);
 const struct v4l2_mbus_framefmt *output;
 const struct v4l2_mbus_framefmt *input;
 unsigned int hscale;

 input = vsp1_entity_get_pad_format(&uds->entity, uds->entity.config,
        UDS_PAD_SINK);
 output = vsp1_entity_get_pad_format(&uds->entity, uds->entity.config,
         UDS_PAD_SOURCE);
 hscale = output->width / input->width;
 if (hscale <= 2)
  return 256;
 else if (hscale <= 4)
  return 512;
 else if (hscale <= 8)
  return 1024;
 else
  return 2048;
}

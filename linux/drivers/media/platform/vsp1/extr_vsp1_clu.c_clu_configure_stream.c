
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_2__ {int config; } ;
struct vsp1_clu {int yuv_mode; TYPE_1__ entity; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;


 int CLU_PAD_SINK ;
 scalar_t__ MEDIA_BUS_FMT_AYUV8_1X32 ;
 struct vsp1_clu* to_clu (int *) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void clu_configure_stream(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_dl_list *dl,
     struct vsp1_dl_body *dlb)
{
 struct vsp1_clu *clu = to_clu(&entity->subdev);
 struct v4l2_mbus_framefmt *format;





 format = vsp1_entity_get_pad_format(&clu->entity,
         clu->entity.config,
         CLU_PAD_SINK);
 clu->yuv_mode = format->code == MEDIA_BUS_FMT_AYUV8_1X32;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vsp1_sru_param {int ctrl0; int ctrl2; } ;
struct TYPE_2__ {int config; } ;
struct vsp1_sru {int intensity; TYPE_1__ entity; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; scalar_t__ width; } ;


 scalar_t__ MEDIA_BUS_FMT_ARGB8888_1X32 ;
 int SRU_PAD_SINK ;
 int SRU_PAD_SOURCE ;
 int VI6_SRU_CTRL0 ;
 int VI6_SRU_CTRL0_MODE_UPSCALE ;
 int VI6_SRU_CTRL0_PARAM2 ;
 int VI6_SRU_CTRL0_PARAM3 ;
 int VI6_SRU_CTRL0_PARAM4 ;
 int VI6_SRU_CTRL1 ;
 int VI6_SRU_CTRL1_PARAM5 ;
 int VI6_SRU_CTRL2 ;
 struct vsp1_sru* to_sru (int *) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,int ,int ) ;
 struct vsp1_sru_param* vsp1_sru_params ;
 int vsp1_sru_write (struct vsp1_sru*,struct vsp1_dl_body*,int ,int) ;

__attribute__((used)) static void sru_configure_stream(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_dl_list *dl,
     struct vsp1_dl_body *dlb)
{
 const struct vsp1_sru_param *param;
 struct vsp1_sru *sru = to_sru(&entity->subdev);
 struct v4l2_mbus_framefmt *input;
 struct v4l2_mbus_framefmt *output;
 u32 ctrl0;

 input = vsp1_entity_get_pad_format(&sru->entity, sru->entity.config,
        SRU_PAD_SINK);
 output = vsp1_entity_get_pad_format(&sru->entity, sru->entity.config,
         SRU_PAD_SOURCE);

 if (input->code == MEDIA_BUS_FMT_ARGB8888_1X32)
  ctrl0 = VI6_SRU_CTRL0_PARAM2 | VI6_SRU_CTRL0_PARAM3
        | VI6_SRU_CTRL0_PARAM4;
 else
  ctrl0 = VI6_SRU_CTRL0_PARAM3;

 if (input->width != output->width)
  ctrl0 |= VI6_SRU_CTRL0_MODE_UPSCALE;

 param = &vsp1_sru_params[sru->intensity - 1];

 ctrl0 |= param->ctrl0;

 vsp1_sru_write(sru, dlb, VI6_SRU_CTRL0, ctrl0);
 vsp1_sru_write(sru, dlb, VI6_SRU_CTRL1, VI6_SRU_CTRL1_PARAM5);
 vsp1_sru_write(sru, dlb, VI6_SRU_CTRL2, param->ctrl2);
}

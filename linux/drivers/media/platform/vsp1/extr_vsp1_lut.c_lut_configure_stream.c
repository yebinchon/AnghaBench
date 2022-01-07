
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_pipeline {int dummy; } ;
struct vsp1_lut {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;


 int VI6_LUT_CTRL ;
 int VI6_LUT_CTRL_EN ;
 struct vsp1_lut* to_lut (int *) ;
 int vsp1_lut_write (struct vsp1_lut*,struct vsp1_dl_body*,int ,int ) ;

__attribute__((used)) static void lut_configure_stream(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_dl_list *dl,
     struct vsp1_dl_body *dlb)
{
 struct vsp1_lut *lut = to_lut(&entity->subdev);

 vsp1_lut_write(lut, dlb, VI6_LUT_CTRL, VI6_LUT_CTRL_EN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* vsp1; int config; } ;
struct vsp1_uds {scalar_t__ scale_alpha; TYPE_2__ entity; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct TYPE_3__ {int dev; } ;


 int UDS_PAD_SINK ;
 int UDS_PAD_SOURCE ;
 int VI6_UDS_CTRL ;
 unsigned int VI6_UDS_CTRL_AON ;
 unsigned int VI6_UDS_CTRL_BC ;
 int VI6_UDS_PASS_BWIDTH ;
 unsigned int VI6_UDS_PASS_BWIDTH_H_SHIFT ;
 unsigned int VI6_UDS_PASS_BWIDTH_V_SHIFT ;
 int VI6_UDS_SCALE ;
 unsigned int VI6_UDS_SCALE_HFRAC_SHIFT ;
 unsigned int VI6_UDS_SCALE_VFRAC_SHIFT ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 struct vsp1_uds* to_uds (int *) ;
 unsigned int uds_compute_ratio (int ,int ) ;
 unsigned int uds_passband_width (unsigned int) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_2__*,int ,int ) ;
 int vsp1_uds_write (struct vsp1_uds*,struct vsp1_dl_body*,int ,unsigned int) ;

__attribute__((used)) static void uds_configure_stream(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_dl_list *dl,
     struct vsp1_dl_body *dlb)
{
 struct vsp1_uds *uds = to_uds(&entity->subdev);
 const struct v4l2_mbus_framefmt *output;
 const struct v4l2_mbus_framefmt *input;
 unsigned int hscale;
 unsigned int vscale;
 bool multitap;

 input = vsp1_entity_get_pad_format(&uds->entity, uds->entity.config,
        UDS_PAD_SINK);
 output = vsp1_entity_get_pad_format(&uds->entity, uds->entity.config,
         UDS_PAD_SOURCE);

 hscale = uds_compute_ratio(input->width, output->width);
 vscale = uds_compute_ratio(input->height, output->height);

 dev_dbg(uds->entity.vsp1->dev, "hscale %u vscale %u\n", hscale, vscale);






 if (uds->scale_alpha && (hscale >= 8192 || vscale >= 8192))
  multitap = 0;
 else
  multitap = 1;

 vsp1_uds_write(uds, dlb, VI6_UDS_CTRL,
         (uds->scale_alpha ? VI6_UDS_CTRL_AON : 0) |
         (multitap ? VI6_UDS_CTRL_BC : 0));

 vsp1_uds_write(uds, dlb, VI6_UDS_PASS_BWIDTH,
         (uds_passband_width(hscale)
    << VI6_UDS_PASS_BWIDTH_H_SHIFT) |
         (uds_passband_width(vscale)
    << VI6_UDS_PASS_BWIDTH_V_SHIFT));


 vsp1_uds_write(uds, dlb, VI6_UDS_SCALE,
         (hscale << VI6_UDS_SCALE_HFRAC_SHIFT) |
         (vscale << VI6_UDS_SCALE_VFRAC_SHIFT));
}

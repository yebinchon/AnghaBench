
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_uif {scalar_t__ m3w_quirk; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int config; int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct v4l2_rect {unsigned int left; unsigned int width; unsigned int top; unsigned int height; } ;


 int UIF_PAD_SINK ;
 int V4L2_SEL_TGT_CROP ;
 int VI6_UIF_DISCOM_DOCMCR ;
 unsigned int VI6_UIF_DISCOM_DOCMCR_CMPR ;
 int VI6_UIF_DISCOM_DOCMPMR ;
 unsigned int VI6_UIF_DISCOM_DOCMPMR_SEL (int) ;
 int VI6_UIF_DISCOM_DOCMSPXR ;
 int VI6_UIF_DISCOM_DOCMSPYR ;
 int VI6_UIF_DISCOM_DOCMSZXR ;
 int VI6_UIF_DISCOM_DOCMSZYR ;
 struct vsp1_uif* to_uif (int *) ;
 struct v4l2_rect* vsp1_entity_get_pad_selection (struct vsp1_entity*,int ,int ,int ) ;
 int vsp1_uif_write (struct vsp1_uif*,struct vsp1_dl_body*,int ,unsigned int) ;

__attribute__((used)) static void uif_configure_stream(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_dl_list *dl,
     struct vsp1_dl_body *dlb)
{
 struct vsp1_uif *uif = to_uif(&entity->subdev);
 const struct v4l2_rect *crop;
 unsigned int left;
 unsigned int width;

 vsp1_uif_write(uif, dlb, VI6_UIF_DISCOM_DOCMPMR,
         VI6_UIF_DISCOM_DOCMPMR_SEL(9));

 crop = vsp1_entity_get_pad_selection(entity, entity->config,
          UIF_PAD_SINK, V4L2_SEL_TGT_CROP);

 left = crop->left;
 width = crop->width;


 if (uif->m3w_quirk) {
  left /= 2;
  width /= 2;
 }

 vsp1_uif_write(uif, dlb, VI6_UIF_DISCOM_DOCMSPXR, left);
 vsp1_uif_write(uif, dlb, VI6_UIF_DISCOM_DOCMSPYR, crop->top);
 vsp1_uif_write(uif, dlb, VI6_UIF_DISCOM_DOCMSZXR, width);
 vsp1_uif_write(uif, dlb, VI6_UIF_DISCOM_DOCMSZYR, crop->height);

 vsp1_uif_write(uif, dlb, VI6_UIF_DISCOM_DOCMCR,
         VI6_UIF_DISCOM_DOCMCR_CMPR);
}

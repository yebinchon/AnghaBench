
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {unsigned int index; int entity; } ;
struct media_entity {int dummy; } ;
struct isp_csi2_ctrl_cfg {int vp_only_enable; int vp_clk_enable; } ;
struct isp_csi2_device {int output; struct isp_csi2_ctrl_cfg ctrl; } ;


 int CSI2_OUTPUT_CCDC ;
 int CSI2_OUTPUT_MEMORY ;

 int EBUSY ;
 int EINVAL ;
 int MEDIA_LNK_FL_ENABLED ;
 scalar_t__ is_media_entity_v4l2_subdev (int ) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 struct isp_csi2_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi2_link_setup(struct media_entity *entity,
      const struct media_pad *local,
      const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct isp_csi2_device *csi2 = v4l2_get_subdevdata(sd);
 struct isp_csi2_ctrl_cfg *ctrl = &csi2->ctrl;
 unsigned int index = local->index;







 if (is_media_entity_v4l2_subdev(remote->entity))
  index |= 2 << 16;

 switch (index) {
 case 128:
  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (csi2->output & ~CSI2_OUTPUT_MEMORY)
    return -EBUSY;
   csi2->output |= CSI2_OUTPUT_MEMORY;
  } else {
   csi2->output &= ~CSI2_OUTPUT_MEMORY;
  }
  break;

 case 128 | 2 << 16:
  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (csi2->output & ~CSI2_OUTPUT_CCDC)
    return -EBUSY;
   csi2->output |= CSI2_OUTPUT_CCDC;
  } else {
   csi2->output &= ~CSI2_OUTPUT_CCDC;
  }
  break;

 default:

  return -EINVAL;
 }

 ctrl->vp_only_enable =
  (csi2->output & CSI2_OUTPUT_MEMORY) ? 0 : 1;
 ctrl->vp_clk_enable = !!(csi2->output & CSI2_OUTPUT_CCDC);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vfe_line {TYPE_1__* fmt; } ;
struct vfe_device {scalar_t__ base; } ;
struct TYPE_2__ {int code; int width; int height; } ;






 size_t MSM_VFE_PAD_SINK ;
 scalar_t__ VFE_0_CAMIF_CFG ;
 int VFE_0_CAMIF_CFG_VFE_OUTPUT_EN ;
 scalar_t__ VFE_0_CAMIF_FRAME_CFG ;
 scalar_t__ VFE_0_CAMIF_IRQ_FRAMEDROP_PATTERN ;
 scalar_t__ VFE_0_CAMIF_IRQ_SUBSAMPLE_PATTERN ;
 scalar_t__ VFE_0_CAMIF_SUBSAMPLE_CFG ;
 scalar_t__ VFE_0_CAMIF_WINDOW_HEIGHT_CFG ;
 scalar_t__ VFE_0_CAMIF_WINDOW_WIDTH_CFG ;
 scalar_t__ VFE_0_CORE_CFG ;
 int VFE_0_CORE_CFG_COMPOSITE_REG_UPDATE_EN ;
 int VFE_0_CORE_CFG_PIXEL_PATTERN_CBYCRY ;
 int VFE_0_CORE_CFG_PIXEL_PATTERN_CRYCBY ;
 int VFE_0_CORE_CFG_PIXEL_PATTERN_YCBYCR ;
 int VFE_0_CORE_CFG_PIXEL_PATTERN_YCRYCB ;
 int VFE_0_RDI_CFG_x (int ) ;
 int VFE_0_RDI_CFG_x_MIPI_EN_BITS ;
 int vfe_reg_set (struct vfe_device*,int ,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_set_camif_cfg(struct vfe_device *vfe, struct vfe_line *line)
{
 u32 val;

 switch (line->fmt[MSM_VFE_PAD_SINK].code) {
 case 129:
  val = VFE_0_CORE_CFG_PIXEL_PATTERN_YCBYCR;
  break;
 case 128:
  val = VFE_0_CORE_CFG_PIXEL_PATTERN_YCRYCB;
  break;
 case 131:
 default:
  val = VFE_0_CORE_CFG_PIXEL_PATTERN_CBYCRY;
  break;
 case 130:
  val = VFE_0_CORE_CFG_PIXEL_PATTERN_CRYCBY;
  break;
 }

 val |= VFE_0_CORE_CFG_COMPOSITE_REG_UPDATE_EN;
 writel_relaxed(val, vfe->base + VFE_0_CORE_CFG);

 val = line->fmt[MSM_VFE_PAD_SINK].width * 2 - 1;
 val |= (line->fmt[MSM_VFE_PAD_SINK].height - 1) << 16;
 writel_relaxed(val, vfe->base + VFE_0_CAMIF_FRAME_CFG);

 val = line->fmt[MSM_VFE_PAD_SINK].width * 2 - 1;
 writel_relaxed(val, vfe->base + VFE_0_CAMIF_WINDOW_WIDTH_CFG);

 val = line->fmt[MSM_VFE_PAD_SINK].height - 1;
 writel_relaxed(val, vfe->base + VFE_0_CAMIF_WINDOW_HEIGHT_CFG);

 val = 0xffffffff;
 writel_relaxed(val, vfe->base + VFE_0_CAMIF_SUBSAMPLE_CFG);

 val = 0xffffffff;
 writel_relaxed(val, vfe->base + VFE_0_CAMIF_IRQ_FRAMEDROP_PATTERN);

 val = 0xffffffff;
 writel_relaxed(val, vfe->base + VFE_0_CAMIF_IRQ_SUBSAMPLE_PATTERN);

 val = VFE_0_RDI_CFG_x_MIPI_EN_BITS;
 vfe_reg_set(vfe, VFE_0_RDI_CFG_x(0), val);

 val = VFE_0_CAMIF_CFG_VFE_OUTPUT_EN;
 writel_relaxed(val, vfe->base + VFE_0_CAMIF_CFG);
}

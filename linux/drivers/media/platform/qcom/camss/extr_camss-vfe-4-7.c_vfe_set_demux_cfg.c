
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vfe_line {TYPE_1__* fmt; } ;
struct vfe_device {scalar_t__ base; } ;
struct TYPE_2__ {int code; } ;






 size_t MSM_VFE_PAD_SINK ;
 scalar_t__ VFE_0_DEMUX_CFG ;
 int VFE_0_DEMUX_CFG_PERIOD ;
 scalar_t__ VFE_0_DEMUX_EVEN_CFG ;
 int VFE_0_DEMUX_EVEN_CFG_PATTERN_UYVY ;
 int VFE_0_DEMUX_EVEN_CFG_PATTERN_VYUY ;
 int VFE_0_DEMUX_EVEN_CFG_PATTERN_YUYV ;
 int VFE_0_DEMUX_EVEN_CFG_PATTERN_YVYU ;
 scalar_t__ VFE_0_DEMUX_GAIN_0 ;
 int VFE_0_DEMUX_GAIN_0_CH0_EVEN ;
 int VFE_0_DEMUX_GAIN_0_CH0_ODD ;
 scalar_t__ VFE_0_DEMUX_GAIN_1 ;
 int VFE_0_DEMUX_GAIN_1_CH1 ;
 int VFE_0_DEMUX_GAIN_1_CH2 ;
 scalar_t__ VFE_0_DEMUX_ODD_CFG ;
 int VFE_0_DEMUX_ODD_CFG_PATTERN_UYVY ;
 int VFE_0_DEMUX_ODD_CFG_PATTERN_VYUY ;
 int VFE_0_DEMUX_ODD_CFG_PATTERN_YUYV ;
 int VFE_0_DEMUX_ODD_CFG_PATTERN_YVYU ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_set_demux_cfg(struct vfe_device *vfe, struct vfe_line *line)
{
 u32 val, even_cfg, odd_cfg;

 writel_relaxed(VFE_0_DEMUX_CFG_PERIOD, vfe->base + VFE_0_DEMUX_CFG);

 val = VFE_0_DEMUX_GAIN_0_CH0_EVEN | VFE_0_DEMUX_GAIN_0_CH0_ODD;
 writel_relaxed(val, vfe->base + VFE_0_DEMUX_GAIN_0);

 val = VFE_0_DEMUX_GAIN_1_CH1 | VFE_0_DEMUX_GAIN_1_CH2;
 writel_relaxed(val, vfe->base + VFE_0_DEMUX_GAIN_1);

 switch (line->fmt[MSM_VFE_PAD_SINK].code) {
 case 129:
  even_cfg = VFE_0_DEMUX_EVEN_CFG_PATTERN_YUYV;
  odd_cfg = VFE_0_DEMUX_ODD_CFG_PATTERN_YUYV;
  break;
 case 128:
  even_cfg = VFE_0_DEMUX_EVEN_CFG_PATTERN_YVYU;
  odd_cfg = VFE_0_DEMUX_ODD_CFG_PATTERN_YVYU;
  break;
 case 131:
 default:
  even_cfg = VFE_0_DEMUX_EVEN_CFG_PATTERN_UYVY;
  odd_cfg = VFE_0_DEMUX_ODD_CFG_PATTERN_UYVY;
  break;
 case 130:
  even_cfg = VFE_0_DEMUX_EVEN_CFG_PATTERN_VYUY;
  odd_cfg = VFE_0_DEMUX_ODD_CFG_PATTERN_VYUY;
  break;
 }

 writel_relaxed(even_cfg, vfe->base + VFE_0_DEMUX_EVEN_CFG);
 writel_relaxed(odd_cfg, vfe->base + VFE_0_DEMUX_ODD_CFG);
}

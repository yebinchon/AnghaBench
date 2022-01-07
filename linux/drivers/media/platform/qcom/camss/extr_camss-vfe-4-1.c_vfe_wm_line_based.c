
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vfe_device {scalar_t__ base; } ;
struct v4l2_pix_format_mplane {int pixelformat; } ;


 scalar_t__ VFE_0_BUS_IMAGE_MASTER_n_WR_BUFFER_CFG (int) ;
 scalar_t__ VFE_0_BUS_IMAGE_MASTER_n_WR_IMAGE_SIZE (int) ;
 int vfe_get_wm_sizes (struct v4l2_pix_format_mplane*,int ,int*,int*,int*) ;
 int vfe_word_per_line (int ,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_wm_line_based(struct vfe_device *vfe, u32 wm,
         struct v4l2_pix_format_mplane *pix,
         u8 plane, u32 enable)
{
 u32 reg;

 if (enable) {
  u16 width = 0, height = 0, bytesperline = 0, wpl;

  vfe_get_wm_sizes(pix, plane, &width, &height, &bytesperline);

  wpl = vfe_word_per_line(pix->pixelformat, width);

  reg = height - 1;
  reg |= ((wpl + 1) / 2 - 1) << 16;

  writel_relaxed(reg, vfe->base +
          VFE_0_BUS_IMAGE_MASTER_n_WR_IMAGE_SIZE(wm));

  wpl = vfe_word_per_line(pix->pixelformat, bytesperline);

  reg = 0x3;
  reg |= (height - 1) << 4;
  reg |= wpl << 16;

  writel_relaxed(reg, vfe->base +
          VFE_0_BUS_IMAGE_MASTER_n_WR_BUFFER_CFG(wm));
 } else {
  writel_relaxed(0, vfe->base +
          VFE_0_BUS_IMAGE_MASTER_n_WR_IMAGE_SIZE(wm));
  writel_relaxed(0, vfe->base +
          VFE_0_BUS_IMAGE_MASTER_n_WR_BUFFER_CFG(wm));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk; } ;
struct xvtc_device {TYPE_1__ xvip; int has_generator; } ;
struct xvtc_config {int vblank_start; int hblank_start; int hsize; int vsize; int hsync_end; int hsync_start; int vsync_end; int vsync_start; } ;


 int ENXIO ;
 int XVIP_CTRL_CONTROL ;
 int XVIP_CTRL_CONTROL_REG_UPDATE ;
 int XVTC_ACTIVE_HSIZE_SHIFT ;
 int XVTC_ACTIVE_SIZE ;
 int XVTC_ACTIVE_VSIZE_SHIFT ;
 int XVTC_CONTROL_ACTIVE_CHROMA_POL_SRC ;
 int XVTC_CONTROL_ACTIVE_HSIZE_SRC ;
 int XVTC_CONTROL_ACTIVE_VIDEO_POL_SRC ;
 int XVTC_CONTROL_ACTIVE_VSIZE_SRC ;
 int XVTC_CONTROL_CHROMA_SRC ;
 int XVTC_CONTROL_FRAME_HSIZE_SRC ;
 int XVTC_CONTROL_FRAME_VSIZE_SRC ;
 int XVTC_CONTROL_GEN_ENABLE ;
 int XVTC_CONTROL_HBLANK_POL_SRC ;
 int XVTC_CONTROL_HSYNC_END_SRC ;
 int XVTC_CONTROL_HSYNC_POL_SRC ;
 int XVTC_CONTROL_HSYNC_START_SRC ;
 int XVTC_CONTROL_VBLANK_HOFF_SRC ;
 int XVTC_CONTROL_VBLANK_POL_SRC ;
 int XVTC_CONTROL_VSYNC_END_SRC ;
 int XVTC_CONTROL_VSYNC_POL_SRC ;
 int XVTC_CONTROL_VSYNC_START_SRC ;
 int XVTC_ENCODING ;
 int XVTC_F0_VBLANK_H ;
 int XVTC_F0_VSYNC_H ;
 int XVTC_F0_VSYNC_V ;
 int XVTC_F0_VSYNC_VEND_SHIFT ;
 int XVTC_F0_VSYNC_VSTART_SHIFT ;
 int XVTC_HSIZE ;
 int XVTC_HSYNC ;
 int XVTC_HSYNC_END_SHIFT ;
 int XVTC_HSYNC_START_SHIFT ;
 int XVTC_POLARITY ;
 int XVTC_POLARITY_ACTIVE_CHROMA_POL ;
 int XVTC_POLARITY_ACTIVE_VIDEO_POL ;
 int XVTC_POLARITY_HBLANK_POL ;
 int XVTC_POLARITY_HSYNC_POL ;
 int XVTC_POLARITY_VBLANK_POL ;
 int XVTC_POLARITY_VSYNC_POL ;
 int XVTC_VSIZE ;
 int clk_prepare_enable (int ) ;
 int xvip_write (TYPE_1__*,int ,int) ;
 int xvtc_gen_write (struct xvtc_device*,int ,int) ;

int xvtc_generator_start(struct xvtc_device *xvtc,
    const struct xvtc_config *config)
{
 int ret;

 if (!xvtc->has_generator)
  return -ENXIO;

 ret = clk_prepare_enable(xvtc->xvip.clk);
 if (ret < 0)
  return ret;




 xvtc_gen_write(xvtc, XVTC_POLARITY,
         XVTC_POLARITY_ACTIVE_CHROMA_POL |
         XVTC_POLARITY_ACTIVE_VIDEO_POL |
         XVTC_POLARITY_HSYNC_POL | XVTC_POLARITY_VSYNC_POL |
         XVTC_POLARITY_HBLANK_POL | XVTC_POLARITY_VBLANK_POL);




 xvtc_gen_write(xvtc, XVTC_ENCODING, 0);




 xvtc_gen_write(xvtc, XVTC_ACTIVE_SIZE,
         (config->vblank_start << XVTC_ACTIVE_VSIZE_SHIFT) |
         (config->hblank_start << XVTC_ACTIVE_HSIZE_SHIFT));
 xvtc_gen_write(xvtc, XVTC_HSIZE, config->hsize);
 xvtc_gen_write(xvtc, XVTC_VSIZE, config->vsize);
 xvtc_gen_write(xvtc, XVTC_HSYNC,
         (config->hsync_end << XVTC_HSYNC_END_SHIFT) |
         (config->hsync_start << XVTC_HSYNC_START_SHIFT));
 xvtc_gen_write(xvtc, XVTC_F0_VBLANK_H, 0);
 xvtc_gen_write(xvtc, XVTC_F0_VSYNC_V,
         (config->vsync_end << XVTC_F0_VSYNC_VEND_SHIFT) |
         (config->vsync_start << XVTC_F0_VSYNC_VSTART_SHIFT));
 xvtc_gen_write(xvtc, XVTC_F0_VSYNC_H, 0);




 xvip_write(&xvtc->xvip, XVIP_CTRL_CONTROL,
     XVTC_CONTROL_ACTIVE_CHROMA_POL_SRC |
     XVTC_CONTROL_ACTIVE_VIDEO_POL_SRC |
     XVTC_CONTROL_HSYNC_POL_SRC | XVTC_CONTROL_VSYNC_POL_SRC |
     XVTC_CONTROL_HBLANK_POL_SRC | XVTC_CONTROL_VBLANK_POL_SRC |
     XVTC_CONTROL_CHROMA_SRC | XVTC_CONTROL_VBLANK_HOFF_SRC |
     XVTC_CONTROL_VSYNC_END_SRC | XVTC_CONTROL_VSYNC_START_SRC |
     XVTC_CONTROL_ACTIVE_VSIZE_SRC |
     XVTC_CONTROL_FRAME_VSIZE_SRC | XVTC_CONTROL_HSYNC_END_SRC |
     XVTC_CONTROL_HSYNC_START_SRC |
     XVTC_CONTROL_ACTIVE_HSIZE_SRC |
     XVTC_CONTROL_FRAME_HSIZE_SRC | XVTC_CONTROL_GEN_ENABLE |
     XVIP_CTRL_CONTROL_REG_UPDATE);

 return 0;
}

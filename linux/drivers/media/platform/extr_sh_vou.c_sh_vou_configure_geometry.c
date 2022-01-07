
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_rect {int height; int top; int width; int left; } ;
struct v4l2_pix_format {int height; int width; } ;
struct sh_vou_fmt {int pkf; int yf; int rgb; int pfmt; } ;
struct TYPE_2__ {int dev; } ;
struct sh_vou_device {int std; TYPE_1__ v4l2_dev; struct v4l2_pix_format pix; struct v4l2_rect rect; } ;


 int V4L2_STD_525_60 ;
 int VOUDFR ;
 int VOUDPR ;
 int VOUDSR ;
 int VOUISR ;
 int VOUVCR ;
 int VOUVPR ;
 unsigned int VOU_MAX_IMAGE_WIDTH ;
 int dev_dbg (int ,char*,int,int,...) ;
 int sh_vou_reg_ab_write (struct sh_vou_device*,int ,int) ;
 struct sh_vou_fmt* vou_fmt ;
 int* vou_scale_h_fld ;
 int* vou_scale_v_fld ;

__attribute__((used)) static void sh_vou_configure_geometry(struct sh_vou_device *vou_dev,
          int pix_idx, int w_idx, int h_idx)
{
 struct sh_vou_fmt *fmt = vou_fmt + pix_idx;
 unsigned int black_left, black_top, width_max,
  frame_in_height, frame_out_height, frame_out_top;
 struct v4l2_rect *rect = &vou_dev->rect;
 struct v4l2_pix_format *pix = &vou_dev->pix;
 u32 vouvcr = 0, dsr_h, dsr_v;

 if (vou_dev->std & V4L2_STD_525_60) {
  width_max = 858;

 } else {
  width_max = 864;

 }

 frame_in_height = pix->height / 2;
 frame_out_height = rect->height / 2;
 frame_out_top = rect->top / 2;
 black_left = width_max - VOU_MAX_IMAGE_WIDTH;
 black_top = 20;

 dsr_h = rect->width + rect->left;
 dsr_v = frame_out_height + frame_out_top;

 dev_dbg(vou_dev->v4l2_dev.dev,
  "image %ux%u, black %u:%u, offset %u:%u, display %ux%u\n",
  pix->width, frame_in_height, black_left, black_top,
  rect->left, frame_out_top, dsr_h, dsr_v);


 sh_vou_reg_ab_write(vou_dev, VOUISR, (pix->width << 16) | frame_in_height);
 sh_vou_reg_ab_write(vou_dev, VOUVPR, (black_left << 16) | black_top);
 sh_vou_reg_ab_write(vou_dev, VOUDPR, (rect->left << 16) | frame_out_top);
 sh_vou_reg_ab_write(vou_dev, VOUDSR, (dsr_h << 16) | dsr_v);






 if (w_idx)
  vouvcr |= (1 << 15) | (vou_scale_h_fld[w_idx - 1] << 4);
 if (h_idx)
  vouvcr |= (1 << 14) | vou_scale_v_fld[h_idx - 1];

 dev_dbg(vou_dev->v4l2_dev.dev, "0x%08x: scaling 0x%x\n",
  fmt->pfmt, vouvcr);


 sh_vou_reg_ab_write(vou_dev, VOUVCR, vouvcr);
 sh_vou_reg_ab_write(vou_dev, VOUDFR,
       fmt->pkf | (fmt->yf << 8) | (fmt->rgb << 16));
}

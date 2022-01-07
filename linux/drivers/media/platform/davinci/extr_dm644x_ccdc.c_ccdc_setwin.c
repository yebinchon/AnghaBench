
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int left; int width; int top; int height; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
struct TYPE_2__ {int dev; } ;


 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_HORZ_INFO ;
 int CCDC_HORZ_INFO_SPH_SHIFT ;
 int CCDC_VDINT ;
 int CCDC_VDINT_VDINT0_SHIFT ;
 int CCDC_VDINT_VDINT1_MASK ;
 int CCDC_VERT_LINES ;
 int CCDC_VERT_START ;
 int CCDC_VERT_START_SLV0_SHIFT ;
 TYPE_1__ ccdc_cfg ;
 int dev_dbg (int ,char*) ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_setwin(struct v4l2_rect *image_win,
   enum ccdc_frmfmt frm_fmt,
   int ppc)
{
 int horz_start, horz_nr_pixels;
 int vert_start, vert_nr_lines;
 int val = 0, mid_img = 0;

 dev_dbg(ccdc_cfg.dev, "\nStarting ccdc_setwin...");





 horz_start = image_win->left << (ppc - 1);
 horz_nr_pixels = (image_win->width << (ppc - 1)) - 1;
 regw((horz_start << CCDC_HORZ_INFO_SPH_SHIFT) | horz_nr_pixels,
      CCDC_HORZ_INFO);

 vert_start = image_win->top;

 if (frm_fmt == CCDC_FRMFMT_INTERLACED) {
  vert_nr_lines = (image_win->height >> 1) - 1;
  vert_start >>= 1;

  vert_start += 1;

  val = (vert_start << CCDC_VDINT_VDINT0_SHIFT);
  regw(val, CCDC_VDINT);

 } else {

  vert_start += 1;
  vert_nr_lines = image_win->height - 1;




  mid_img = vert_start + (image_win->height / 2);
  val = (vert_start << CCDC_VDINT_VDINT0_SHIFT) |
      (mid_img & CCDC_VDINT_VDINT1_MASK);
  regw(val, CCDC_VDINT);

 }
 regw((vert_start << CCDC_VERT_START_SLV0_SHIFT) | vert_start,
      CCDC_VERT_START);
 regw(vert_nr_lines, CCDC_VERT_LINES);
 dev_dbg(ccdc_cfg.dev, "\nEnd of ccdc_setwin...");
}

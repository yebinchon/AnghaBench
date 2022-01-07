
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int left; int width; int top; int height; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
struct TYPE_2__ {int dev; } ;


 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_NUM_LINES_VER ;
 int CCDC_START_VER_ONE_MASK ;
 int CCDC_START_VER_TWO_MASK ;
 int NLV ;
 int NPH ;
 int SLV0 ;
 int SLV1 ;
 int SPH ;
 int VDINT0 ;
 int VDINT1 ;
 TYPE_1__ ccdc_cfg ;
 int dev_dbg (int ,char*) ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_setwin(struct v4l2_rect *image_win,
   enum ccdc_frmfmt frm_fmt, int ppc)
{
 int horz_start, horz_nr_pixels;
 int vert_start, vert_nr_lines;
 int mid_img = 0;

 dev_dbg(ccdc_cfg.dev, "\nStarting ccdc_setwin...");






 horz_start = image_win->left << (ppc - 1);
 horz_nr_pixels = ((image_win->width) << (ppc - 1)) - 1;


 regw(horz_start, SPH);
 regw(horz_nr_pixels, NPH);
 vert_start = image_win->top;

 if (frm_fmt == CCDC_FRMFMT_INTERLACED) {
  vert_nr_lines = (image_win->height >> 1) - 1;
  vert_start >>= 1;

  vert_start += 1;

  regw(vert_start, VDINT0);
 } else {

  vert_start += 1;
  vert_nr_lines = image_win->height - 1;

  mid_img = vert_start + (image_win->height / 2);
  regw(vert_start, VDINT0);
  regw(mid_img, VDINT1);
 }
 regw(vert_start & CCDC_START_VER_ONE_MASK, SLV0);
 regw(vert_start & CCDC_START_VER_TWO_MASK, SLV1);
 regw(vert_nr_lines & CCDC_NUM_LINES_VER, NLV);
 dev_dbg(ccdc_cfg.dev, "\nEnd of ccdc_setwin...");
}

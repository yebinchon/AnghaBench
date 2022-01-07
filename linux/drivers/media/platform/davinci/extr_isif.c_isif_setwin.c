
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int left; int width; int top; int height; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
struct TYPE_2__ {int dev; } ;


 int CCDC_FRMFMT_INTERLACED ;
 int LNH ;
 int LNV ;
 int NUM_LINES_VER ;
 int NUM_PX_HOR_MASK ;
 int SLV0 ;
 int SLV1 ;
 int SPH ;
 int START_PX_HOR_MASK ;
 int START_VER_ONE_MASK ;
 int START_VER_TWO_MASK ;
 int VDINT0 ;
 int VDINT1 ;
 int dev_dbg (int ,char*) ;
 TYPE_1__ isif_cfg ;
 int regw (int,int ) ;

__attribute__((used)) static void isif_setwin(struct v4l2_rect *image_win,
   enum ccdc_frmfmt frm_fmt, int ppc)
{
 int horz_start, horz_nr_pixels;
 int vert_start, vert_nr_lines;
 int mid_img = 0;

 dev_dbg(isif_cfg.dev, "\nStarting isif_setwin...");





 horz_start = image_win->left << (ppc - 1);
 horz_nr_pixels = ((image_win->width) << (ppc - 1)) - 1;


 regw(horz_start & START_PX_HOR_MASK, SPH);
 regw(horz_nr_pixels & NUM_PX_HOR_MASK, LNH);
 vert_start = image_win->top;

 if (frm_fmt == CCDC_FRMFMT_INTERLACED) {
  vert_nr_lines = (image_win->height >> 1) - 1;
  vert_start >>= 1;

  vert_start += 1;
 } else {

  vert_start += 1;
  vert_nr_lines = image_win->height - 1;

  mid_img = vert_start + (image_win->height / 2);
  regw(mid_img, VDINT1);
 }

 regw(0, VDINT0);
 regw(vert_start & START_VER_ONE_MASK, SLV0);
 regw(vert_start & START_VER_TWO_MASK, SLV1);
 regw(vert_nr_lines & NUM_LINES_VER, LNV);
}

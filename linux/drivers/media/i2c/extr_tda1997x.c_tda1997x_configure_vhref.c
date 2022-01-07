
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_bt_timings {int hbackporch; int hsync; int width; int height; int vbackporch; int vsync; int il_vbackporch; int il_vsync; int il_vfrontporch; int vfrontporch; scalar_t__ interlaced; } ;
struct TYPE_2__ {struct v4l2_bt_timings bt; } ;
struct tda1997x_state {scalar_t__ chip_revision; TYPE_1__ timings; } ;


 int MASK_VHREF ;
 int REG_FDW_E ;
 int REG_FDW_S ;
 int REG_FREF_F1_S ;
 int REG_FREF_F2_S ;
 int REG_HREF_E ;
 int REG_HREF_S ;
 int REG_LCNT_NLIN ;
 int REG_LCNT_PR ;
 int REG_PXCNT_NPIX ;
 int REG_PXCNT_PR ;
 int REG_VHREF_CTRL ;
 int REG_VREF_F1_S ;
 int REG_VREF_F1_WIDTH ;
 int REG_VREF_F2_S ;
 int REG_VREF_F2_WIDTH ;
 int V4L2_DV_BT_FRAME_HEIGHT (struct v4l2_bt_timings const*) ;
 int V4L2_DV_BT_FRAME_WIDTH (struct v4l2_bt_timings const*) ;
 int VHREF_STD_DET_OFF ;
 int VHREF_STD_DET_SHIFT ;
 int io_write (struct v4l2_subdev*,int ,int) ;
 int io_write16 (struct v4l2_subdev*,int ,int) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void
tda1997x_configure_vhref(struct v4l2_subdev *sd)
{
 struct tda1997x_state *state = to_state(sd);
 const struct v4l2_bt_timings *bt = &state->timings.bt;
 int width, lines;
 u16 href_start, href_end;
 u16 vref_f1_start, vref_f2_start;
 u8 vref_f1_width, vref_f2_width;
 u8 field_polarity;
 u16 fieldref_f1_start, fieldref_f2_start;
 u8 reg;

 href_start = bt->hbackporch + bt->hsync + 1;
 href_end = href_start + bt->width;
 vref_f1_start = bt->height + bt->vbackporch + bt->vsync +
   bt->il_vbackporch + bt->il_vsync +
   bt->il_vfrontporch;
 vref_f1_width = bt->vbackporch + bt->vsync + bt->vfrontporch;
 vref_f2_start = 0;
 vref_f2_width = 0;
 fieldref_f1_start = 0;
 fieldref_f2_start = 0;
 if (bt->interlaced) {
  vref_f2_start = (bt->height / 2) +
    (bt->il_vbackporch + bt->il_vsync - 1);
  vref_f2_width = bt->il_vbackporch + bt->il_vsync +
    bt->il_vfrontporch;
  fieldref_f2_start = vref_f2_start + bt->il_vfrontporch +
        fieldref_f1_start;
 }
 field_polarity = 0;

 width = V4L2_DV_BT_FRAME_WIDTH(bt);
 lines = V4L2_DV_BT_FRAME_HEIGHT(bt);





 io_write16(sd, REG_FDW_S, 0x2ef);
 io_write16(sd, REG_FDW_E, 0x141);


 if (state->chip_revision == 0)
  io_write16(sd, REG_PXCNT_PR, 4);
 else
  io_write16(sd, REG_PXCNT_PR, 1);
 io_write16(sd, REG_PXCNT_NPIX, width & MASK_VHREF);
 io_write16(sd, REG_LCNT_PR, 1);
 io_write16(sd, REG_LCNT_NLIN, lines & MASK_VHREF);






 reg = VHREF_STD_DET_OFF << VHREF_STD_DET_SHIFT;
 io_write(sd, REG_VHREF_CTRL, reg);
 io_write16(sd, REG_HREF_S, href_start & MASK_VHREF);
 io_write16(sd, REG_HREF_E, href_end & MASK_VHREF);

 io_write16(sd, REG_VREF_F1_S, vref_f1_start & MASK_VHREF);
 io_write(sd, REG_VREF_F1_WIDTH, vref_f1_width);

 io_write16(sd, REG_VREF_F2_S, vref_f2_start & MASK_VHREF);
 io_write(sd, REG_VREF_F2_WIDTH, vref_f2_width);


 reg = fieldref_f1_start & MASK_VHREF;
 reg |= field_polarity << 8;
 io_write16(sd, REG_FREF_F1_S, reg);
 reg = fieldref_f2_start & MASK_VHREF;
 io_write16(sd, REG_FREF_F2_S, reg);
}

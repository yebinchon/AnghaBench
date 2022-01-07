
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {int name; } ;
struct v4l2_bt_timings {int hsync; scalar_t__ pixelclock; scalar_t__ interlaced; scalar_t__ width; } ;
struct v4l2_dv_timings {struct v4l2_bt_timings bt; } ;
struct tda1997x_state {int client; struct v4l2_subdev sd; } ;


 int ENOLINK ;
 int ERANGE ;
 int MASK_HPER ;
 int MASK_HSWIDTH ;
 int MASK_VPER ;
 int REG_HS_WIDTH ;
 int REG_H_PER ;
 int REG_V_PER ;
 int V4L2_DV_BT_FRAME_HEIGHT (struct v4l2_bt_timings const*) ;
 int V4L2_DV_BT_FRAME_WIDTH (struct v4l2_bt_timings const*) ;
 int debug ;
 int io_read16 (struct v4l2_subdev*,int ) ;
 int io_read24 (struct v4l2_subdev*,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int,int) ;
 struct v4l2_dv_timings* v4l2_dv_timings_presets ;
 int v4l2_print_dv_timings (int ,char*,struct v4l2_dv_timings*,int) ;
 int v4l_err (int ,char*,int,int,int) ;

__attribute__((used)) static int
tda1997x_detect_std(struct tda1997x_state *state,
      struct v4l2_dv_timings *timings)
{
 struct v4l2_subdev *sd = &state->sd;
 u32 vper;
 u16 hper;
 u16 hsper;
 int i;







 vper = io_read24(sd, REG_V_PER) & MASK_VPER;
 hper = io_read16(sd, REG_H_PER) & MASK_HPER;
 hsper = io_read16(sd, REG_HS_WIDTH) & MASK_HSWIDTH;
 v4l2_dbg(1, debug, sd, "Signal Timings: %u/%u/%u\n", vper, hper, hsper);
 if (!vper || !hper || !hsper)
  return -ENOLINK;

 for (i = 0; v4l2_dv_timings_presets[i].bt.width; i++) {
  const struct v4l2_bt_timings *bt;
  u32 lines, width, _hper, _hsper;
  u32 vmin, vmax, hmin, hmax, hsmin, hsmax;
  bool vmatch, hmatch, hsmatch;

  bt = &v4l2_dv_timings_presets[i].bt;
  width = V4L2_DV_BT_FRAME_WIDTH(bt);
  lines = V4L2_DV_BT_FRAME_HEIGHT(bt);
  _hper = (u32)bt->pixelclock / width;
  if (bt->interlaced)
   lines /= 2;

  vmin = ((27000000 / 1000) * 993) / _hper * lines;
  vmax = ((27000000 / 1000) * 1007) / _hper * lines;

  hmin = ((27000000 / 100) * 99) / _hper;
  hmax = ((27000000 / 100) * 101) / _hper;

  _hsper = 27000 * bt->hsync / ((u32)bt->pixelclock/1000);
  hsmin = _hsper - 2;
  hsmax = _hsper + 2;


  vmatch = ((vper <= vmax) && (vper >= vmin)) ? 1 : 0;

  hmatch = ((hper <= hmax) && (hper >= hmin)) ? 1 : 0;

  hsmatch = ((hsper <= hsmax) && (hsper >= hsmin)) ? 1 : 0;
  if (hmatch && vmatch && hsmatch) {
   v4l2_print_dv_timings(sd->name, "Detected format: ",
           &v4l2_dv_timings_presets[i],
           0);
   if (timings)
    *timings = v4l2_dv_timings_presets[i];
   return 0;
  }
 }

 v4l_err(state->client, "no resolution match for timings: %d/%d/%d\n",
  vper, hper, hsper);
 return -ERANGE;
}

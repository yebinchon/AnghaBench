
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct osd_layer_config {int xsize; int ysize; } ;
struct display_layer_info {int v_exp; void* v_zoom; int h_exp; void* h_zoom; struct osd_layer_config config; } ;
struct v4l2_pix_format {int width; int height; } ;
struct vpbe_layer {struct display_layer_info layer_info; struct v4l2_pix_format pix_fmt; } ;
struct vpbe_display {struct vpbe_device* vpbe_dev; } ;
struct TYPE_2__ {int std_id; int xres; } ;
struct vpbe_device {int v4l2_dev; TYPE_1__ current_timings; } ;


 int H_EXP_9_OVER_8 ;
 int H_EXP_OFF ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int VPBE_DISPLAY_H_EXP_RATIO_D ;
 int VPBE_DISPLAY_H_EXP_RATIO_N ;
 int VPBE_DISPLAY_V_EXP_RATIO_D ;
 int VPBE_DISPLAY_V_EXP_RATIO_N ;
 int V_EXP_6_OVER_5 ;
 int V_EXP_OFF ;
 void* ZOOM_X1 ;
 void* ZOOM_X2 ;
 void* ZOOM_X4 ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,int,int) ;

__attribute__((used)) static void
vpbe_disp_calculate_scale_factor(struct vpbe_display *disp_dev,
   struct vpbe_layer *layer,
   int expected_xsize, int expected_ysize)
{
 struct display_layer_info *layer_info = &layer->layer_info;
 struct v4l2_pix_format *pixfmt = &layer->pix_fmt;
 struct osd_layer_config *cfg = &layer->layer_info.config;
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
 int calculated_xsize;
 int h_exp = 0;
 int v_exp = 0;
 int h_scale;
 int v_scale;

 v4l2_std_id standard_id = vpbe_dev->current_timings.std_id;
 cfg->xsize = pixfmt->width;
 cfg->ysize = pixfmt->height;
 layer_info->h_zoom = ZOOM_X1;
 layer_info->v_zoom = ZOOM_X1;
 layer_info->h_exp = H_EXP_OFF;
 layer_info->v_exp = V_EXP_OFF;

 if (pixfmt->width < expected_xsize) {
  h_scale = vpbe_dev->current_timings.xres / pixfmt->width;
  if (h_scale < 2)
   h_scale = 1;
  else if (h_scale >= 4)
   h_scale = 4;
  else
   h_scale = 2;
  cfg->xsize *= h_scale;
  if (cfg->xsize < expected_xsize) {
   if ((standard_id & V4L2_STD_525_60) ||
   (standard_id & V4L2_STD_625_50)) {
    calculated_xsize = (cfg->xsize *
     VPBE_DISPLAY_H_EXP_RATIO_N) /
     VPBE_DISPLAY_H_EXP_RATIO_D;
    if (calculated_xsize <= expected_xsize) {
     h_exp = 1;
     cfg->xsize = calculated_xsize;
    }
   }
  }
  if (h_scale == 2)
   layer_info->h_zoom = ZOOM_X2;
  else if (h_scale == 4)
   layer_info->h_zoom = ZOOM_X4;
  if (h_exp)
   layer_info->h_exp = H_EXP_9_OVER_8;
 } else {

  cfg->xsize = expected_xsize;
 }

 if (pixfmt->height < expected_ysize) {
  v_scale = expected_ysize / pixfmt->height;
  if (v_scale < 2)
   v_scale = 1;
  else if (v_scale >= 4)
   v_scale = 4;
  else
   v_scale = 2;
  cfg->ysize *= v_scale;
  if (cfg->ysize < expected_ysize) {
   if ((standard_id & V4L2_STD_625_50)) {
    calculated_xsize = (cfg->ysize *
     VPBE_DISPLAY_V_EXP_RATIO_N) /
     VPBE_DISPLAY_V_EXP_RATIO_D;
    if (calculated_xsize <= expected_ysize) {
     v_exp = 1;
     cfg->ysize = calculated_xsize;
    }
   }
  }
  if (v_scale == 2)
   layer_info->v_zoom = ZOOM_X2;
  else if (v_scale == 4)
   layer_info->v_zoom = ZOOM_X4;
  if (v_exp)
   layer_info->v_exp = V_EXP_6_OVER_5;
 } else {

  cfg->ysize = expected_ysize;
 }
 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
  "crop display xsize = %d, ysize = %d\n",
  cfg->xsize, cfg->ysize);
}

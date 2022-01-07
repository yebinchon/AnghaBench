
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct osd_layer_config {void* pixfmt; int interlaced; scalar_t__ xpos; scalar_t__ ypos; int line_length; int ysize; int xsize; } ;
struct TYPE_8__ {int id; struct osd_layer_config config; } ;
struct v4l2_pix_format {scalar_t__ pixelformat; int bytesperline; int height; int width; } ;
struct vpbe_layer {TYPE_4__ layer_info; struct v4l2_pix_format pix_fmt; int buffer_queue; int device_id; struct vpbe_display* disp_dev; } ;
struct vpbe_display {struct osd_state* osd_device; struct vpbe_device* vpbe_dev; } ;
struct TYPE_6__ {int interlaced; } ;
struct vpbe_device {int v4l2_dev; TYPE_2__ current_timings; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct TYPE_7__ {int (* request_layer ) (struct osd_state*,int ) ;int (* set_layer_config ) (struct osd_state*,int ,struct osd_layer_config*) ;int (* get_layer_config ) (struct osd_state*,int ,struct osd_layer_config*) ;} ;
struct osd_state {TYPE_3__ ops; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 void* PIXFMT_NV12 ;
 void* PIXFMT_YCBCRI ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_PIX_FMT_NV12 ;
 scalar_t__ V4L2_PIX_FMT_UYVY ;
 struct vpbe_layer* _vpbe_display_get_other_win_layer (struct vpbe_display*,struct vpbe_layer*) ;
 int debug ;
 int stub1 (struct osd_state*,int ) ;
 int stub2 (struct osd_state*,int ,struct osd_layer_config*) ;
 int stub3 (struct osd_state*,int ,struct osd_layer_config*) ;
 int stub4 (struct osd_state*,int ,struct osd_layer_config*) ;
 int v4l2_dbg (int,int ,int *,char*,...) ;
 int v4l2_err (int *,char*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vpbe_layer* video_drvdata (struct file*) ;
 int vpbe_try_format (struct vpbe_display*,struct v4l2_pix_format*,int) ;

__attribute__((used)) static int vpbe_display_s_fmt(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_display *disp_dev = layer->disp_dev;
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
 struct osd_layer_config *cfg = &layer->layer_info.config;
 struct v4l2_pix_format *pixfmt = &fmt->fmt.pix;
 struct osd_state *osd_device = disp_dev->osd_device;
 int ret;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
   "VIDIOC_S_FMT, layer id = %d\n",
   layer->device_id);

 if (vb2_is_busy(&layer->buffer_queue))
  return -EBUSY;

 if (V4L2_BUF_TYPE_VIDEO_OUTPUT != fmt->type) {
  v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "invalid type\n");
  return -EINVAL;
 }

 ret = vpbe_try_format(disp_dev, pixfmt, 1);
 if (ret)
  return ret;




 layer->pix_fmt = *pixfmt;
 if (pixfmt->pixelformat == V4L2_PIX_FMT_NV12) {
  struct vpbe_layer *otherlayer;

  otherlayer = _vpbe_display_get_other_win_layer(disp_dev, layer);



  ret = osd_device->ops.request_layer(osd_device,
          otherlayer->layer_info.id);
  if (ret < 0) {
   v4l2_err(&vpbe_dev->v4l2_dev,
     "Display Manager failed to allocate layer\n");
   return -EBUSY;
  }
 }


 osd_device->ops.get_layer_config(osd_device,
   layer->layer_info.id, cfg);

 cfg->xsize = pixfmt->width;
 cfg->ysize = pixfmt->height;
 cfg->line_length = pixfmt->bytesperline;
 cfg->ypos = 0;
 cfg->xpos = 0;
 cfg->interlaced = vpbe_dev->current_timings.interlaced;

 if (V4L2_PIX_FMT_UYVY == pixfmt->pixelformat)
  cfg->pixfmt = PIXFMT_YCBCRI;


 if (V4L2_PIX_FMT_NV12 == pixfmt->pixelformat) {
  struct vpbe_layer *otherlayer;
  cfg->pixfmt = PIXFMT_NV12;
  otherlayer = _vpbe_display_get_other_win_layer(disp_dev,
        layer);
  otherlayer->layer_info.config.pixfmt = PIXFMT_NV12;
 }


 ret = osd_device->ops.set_layer_config(osd_device,
    layer->layer_info.id, cfg);
 if (ret < 0) {
  v4l2_err(&vpbe_dev->v4l2_dev,
    "Error in S_FMT params:\n");
  return -EINVAL;
 }


 osd_device->ops.get_layer_config(osd_device,
   layer->layer_info.id, cfg);

 return 0;
}

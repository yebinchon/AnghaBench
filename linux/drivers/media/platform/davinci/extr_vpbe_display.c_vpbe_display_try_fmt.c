
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_layer {struct vpbe_display* disp_dev; } ;
struct vpbe_display {struct vpbe_device* vpbe_dev; } ;
struct vpbe_device {int v4l2_dev; } ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;
 int vpbe_try_format (struct vpbe_display*,struct v4l2_pix_format*,int ) ;

__attribute__((used)) static int vpbe_display_try_fmt(struct file *file, void *priv,
      struct v4l2_format *fmt)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_display *disp_dev = layer->disp_dev;
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;
 struct v4l2_pix_format *pixfmt = &fmt->fmt.pix;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "VIDIOC_TRY_FMT\n");

 if (V4L2_BUF_TYPE_VIDEO_OUTPUT != fmt->type) {
  v4l2_err(&vpbe_dev->v4l2_dev, "invalid type\n");
  return -EINVAL;
 }


 return vpbe_try_format(disp_dev, pixfmt, 0);

}

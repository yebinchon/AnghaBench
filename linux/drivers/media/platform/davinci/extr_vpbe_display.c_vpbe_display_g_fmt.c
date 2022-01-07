
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpbe_layer {int pix_fmt; int device_id; TYPE_2__* disp_dev; } ;
struct vpbe_device {int v4l2_dev; } ;
struct TYPE_3__ {int pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct vpbe_device* vpbe_dev; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;
 int v4l2_err (int *,char*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_g_fmt(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
   "VIDIOC_G_FMT, layer id = %d\n",
   layer->device_id);


 if (V4L2_BUF_TYPE_VIDEO_OUTPUT != fmt->type) {
  v4l2_err(&vpbe_dev->v4l2_dev, "invalid type\n");
  return -EINVAL;
 }

 fmt->fmt.pix = layer->pix_fmt;

 return 0;
}

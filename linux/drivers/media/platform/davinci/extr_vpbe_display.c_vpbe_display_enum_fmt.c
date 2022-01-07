
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_layer {int device_id; TYPE_1__* disp_dev; } ;
struct vpbe_device {int v4l2_dev; } ;
struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpbe_device* vpbe_dev; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_NV12 ;
 int V4L2_PIX_FMT_UYVY ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;
 int v4l2_err (int *,char*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_enum_fmt(struct file *file, void *priv,
       struct v4l2_fmtdesc *fmt)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
    "VIDIOC_ENUM_FMT, layer id = %d\n",
    layer->device_id);
 if (fmt->index > 1) {
  v4l2_err(&vpbe_dev->v4l2_dev, "Invalid format index\n");
  return -EINVAL;
 }


 if (fmt->index == 0)
  fmt->pixelformat = V4L2_PIX_FMT_UYVY;
 else
  fmt->pixelformat = V4L2_PIX_FMT_NV12;

 return 0;
}

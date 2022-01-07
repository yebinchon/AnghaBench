
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpbe_layer {TYPE_1__* disp_dev; } ;
struct TYPE_4__ {int (* enum_outputs ) (struct vpbe_device*,struct v4l2_output*) ;} ;
struct vpbe_device {int v4l2_dev; TYPE_2__ ops; } ;
struct v4l2_output {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct vpbe_device* vpbe_dev; } ;


 int EINVAL ;
 int debug ;
 int stub1 (struct vpbe_device*,struct v4l2_output*) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_enum_output(struct file *file, void *priv,
        struct v4l2_output *output)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;
 int ret;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "VIDIOC_ENUM_OUTPUT\n");


 if (!vpbe_dev->ops.enum_outputs)
  return -EINVAL;

 ret = vpbe_dev->ops.enum_outputs(vpbe_dev, output);
 if (ret) {
  v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
   "Failed to enumerate outputs\n");
  return -EINVAL;
 }

 return 0;
}

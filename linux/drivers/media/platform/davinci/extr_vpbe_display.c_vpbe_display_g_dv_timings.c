
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpbe_layer {TYPE_1__* disp_dev; } ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_4__ {int timings_type; struct v4l2_dv_timings dv_timings; } ;
struct vpbe_device {TYPE_2__ current_timings; int v4l2_dev; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct vpbe_device* vpbe_dev; } ;


 int EINVAL ;
 int VPBE_ENC_DV_TIMINGS ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int
vpbe_display_g_dv_timings(struct file *file, void *priv,
    struct v4l2_dv_timings *dv_timings)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "VIDIOC_G_DV_TIMINGS\n");



 if (vpbe_dev->current_timings.timings_type &
    VPBE_ENC_DV_TIMINGS) {
  *dv_timings = vpbe_dev->current_timings.dv_timings;
 } else {
  return -EINVAL;
 }

 return 0;
}

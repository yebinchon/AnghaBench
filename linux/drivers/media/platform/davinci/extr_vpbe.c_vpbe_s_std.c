
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_8__ {int upper_margin; int left_margin; } ;
struct vpbe_device {int current_out_index; int current_sd_index; int lock; TYPE_4__ current_timings; struct osd_state* osd_device; int * encoders; struct vpbe_config* cfg; } ;
struct vpbe_config {TYPE_2__* outputs; } ;
struct TYPE_7__ {int (* set_top_margin ) (struct osd_state*,int ) ;int (* set_left_margin ) (struct osd_state*,int ) ;} ;
struct osd_state {TYPE_3__ ops; } ;
struct TYPE_5__ {int capabilities; } ;
struct TYPE_6__ {TYPE_1__ output; } ;


 int ENODATA ;
 int V4L2_OUT_CAP_STD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_std_output ;
 int stub1 (struct osd_state*,int ) ;
 int stub2 (struct osd_state*,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int video ;
 int vpbe_get_std_info (struct vpbe_device*,int ) ;

__attribute__((used)) static int vpbe_s_std(struct vpbe_device *vpbe_dev, v4l2_std_id std_id)
{
 struct vpbe_config *cfg = vpbe_dev->cfg;
 int out_index = vpbe_dev->current_out_index;
 int sd_index = vpbe_dev->current_sd_index;
 int ret;

 if (!(cfg->outputs[out_index].output.capabilities &
  V4L2_OUT_CAP_STD))
  return -ENODATA;

 ret = vpbe_get_std_info(vpbe_dev, std_id);
 if (ret)
  return ret;

 mutex_lock(&vpbe_dev->lock);

 ret = v4l2_subdev_call(vpbe_dev->encoders[sd_index], video,
          s_std_output, std_id);

 if (!ret) {
  struct osd_state *osd_device = vpbe_dev->osd_device;

  osd_device->ops.set_left_margin(osd_device,
  vpbe_dev->current_timings.left_margin);
  osd_device->ops.set_top_margin(osd_device,
  vpbe_dev->current_timings.upper_margin);
 }
 mutex_unlock(&vpbe_dev->lock);

 return ret;
}

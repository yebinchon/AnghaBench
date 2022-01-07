
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int capabilities; } ;
struct vpbe_output {int num_modes; TYPE_3__* modes; TYPE_1__ output; } ;
struct TYPE_6__ {scalar_t__ timings_type; int upper_margin; int left_margin; int dv_timings; } ;
struct vpbe_device {int current_out_index; int current_sd_index; int lock; TYPE_3__ current_timings; struct osd_state* osd_device; scalar_t__ amp; scalar_t__* encoders; struct vpbe_config* cfg; } ;
struct vpbe_config {struct vpbe_output* outputs; } ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_5__ {int (* set_top_margin ) (struct osd_state*,int ) ;int (* set_left_margin ) (struct osd_state*,int ) ;} ;
struct osd_state {TYPE_2__ ops; } ;


 int EINVAL ;
 int ENODATA ;
 int V4L2_OUT_CAP_DV_TIMINGS ;
 scalar_t__ VPBE_ENC_DV_TIMINGS ;
 int memcmp (int *,struct v4l2_dv_timings*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_dv_timings ;
 int stub1 (struct osd_state*,int ) ;
 int stub2 (struct osd_state*,int ) ;
 int v4l2_subdev_call (scalar_t__,int ,int ,struct v4l2_dv_timings*) ;
 int video ;

__attribute__((used)) static int vpbe_s_dv_timings(struct vpbe_device *vpbe_dev,
      struct v4l2_dv_timings *dv_timings)
{
 struct vpbe_config *cfg = vpbe_dev->cfg;
 int out_index = vpbe_dev->current_out_index;
 struct vpbe_output *output = &cfg->outputs[out_index];
 int sd_index = vpbe_dev->current_sd_index;
 int ret, i;


 if (!(cfg->outputs[out_index].output.capabilities &
     V4L2_OUT_CAP_DV_TIMINGS))
  return -ENODATA;

 for (i = 0; i < output->num_modes; i++) {
  if (output->modes[i].timings_type == VPBE_ENC_DV_TIMINGS &&
      !memcmp(&output->modes[i].dv_timings,
    dv_timings, sizeof(*dv_timings)))
   break;
 }
 if (i >= output->num_modes)
  return -EINVAL;
 vpbe_dev->current_timings = output->modes[i];
 mutex_lock(&vpbe_dev->lock);

 ret = v4l2_subdev_call(vpbe_dev->encoders[sd_index], video,
     s_dv_timings, dv_timings);
 if (!ret && vpbe_dev->amp) {

  ret = v4l2_subdev_call(vpbe_dev->amp, video,
    s_dv_timings, dv_timings);
 }

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

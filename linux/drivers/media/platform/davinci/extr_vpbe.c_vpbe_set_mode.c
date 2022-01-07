
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_dv_timings {int dummy; } ;
struct vpbe_enc_mode_info {int timings_type; int upper_margin; int left_margin; struct v4l2_dv_timings dv_timings; int std_id; int name; } ;
struct vpbe_device {int current_out_index; int lock; struct vpbe_enc_mode_info current_timings; struct osd_state* osd_device; struct vpbe_config* cfg; } ;
struct vpbe_config {TYPE_1__* outputs; } ;
struct TYPE_4__ {int (* set_top_margin ) (struct osd_state*,int ) ;int (* set_left_margin ) (struct osd_state*,int ) ;} ;
struct osd_state {TYPE_2__ ops; } ;
struct TYPE_3__ {int num_modes; struct vpbe_enc_mode_info* modes; } ;


 int EINVAL ;
 int VPBE_ENC_DV_TIMINGS ;
 int VPBE_ENC_STD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcmp (int ,int ) ;
 int stub1 (struct osd_state*,int ) ;
 int stub2 (struct osd_state*,int ) ;
 int vpbe_s_dv_timings (struct vpbe_device*,struct v4l2_dv_timings*) ;
 int vpbe_s_std (struct vpbe_device*,int ) ;

__attribute__((used)) static int vpbe_set_mode(struct vpbe_device *vpbe_dev,
    struct vpbe_enc_mode_info *mode_info)
{
 struct vpbe_enc_mode_info *preset_mode = ((void*)0);
 struct vpbe_config *cfg = vpbe_dev->cfg;
 struct v4l2_dv_timings dv_timings;
 struct osd_state *osd_device;
 int out_index = vpbe_dev->current_out_index;
 int i;

 if (!mode_info || !mode_info->name)
  return -EINVAL;

 for (i = 0; i < cfg->outputs[out_index].num_modes; i++) {
  if (!strcmp(mode_info->name,
       cfg->outputs[out_index].modes[i].name)) {
   preset_mode = &cfg->outputs[out_index].modes[i];




   if (preset_mode->timings_type & VPBE_ENC_STD)
    return vpbe_s_std(vpbe_dev,
       preset_mode->std_id);
   if (preset_mode->timings_type &
      VPBE_ENC_DV_TIMINGS) {
    dv_timings =
     preset_mode->dv_timings;
    return vpbe_s_dv_timings(vpbe_dev, &dv_timings);
   }
  }
 }


 if (!preset_mode)
  return -EINVAL;

 mutex_lock(&vpbe_dev->lock);

 osd_device = vpbe_dev->osd_device;
 vpbe_dev->current_timings = *preset_mode;
 osd_device->ops.set_left_margin(osd_device,
  vpbe_dev->current_timings.left_margin);
 osd_device->ops.set_top_margin(osd_device,
  vpbe_dev->current_timings.upper_margin);

 mutex_unlock(&vpbe_dev->lock);
 return 0;
}

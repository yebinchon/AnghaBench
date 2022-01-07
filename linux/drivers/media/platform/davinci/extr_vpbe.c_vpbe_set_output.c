
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int upper_margin; int left_margin; } ;
struct vpbe_device {int current_sd_index; int current_out_index; int lock; TYPE_4__ current_timings; struct osd_state* osd_device; int * encoders; struct venc_platform_data* venc_device; struct vpbe_config* cfg; } ;
struct vpbe_config {int num_outputs; TYPE_2__* outputs; } ;
struct venc_platform_data {int (* setup_if_config ) (int ) ;} ;
struct TYPE_7__ {int (* set_top_margin ) (struct osd_state*,int ) ;int (* set_left_margin ) (struct osd_state*,int ) ;} ;
struct osd_state {TYPE_3__ ops; } ;
struct encoder_config_info {int module_name; } ;
struct TYPE_5__ {int index; } ;
struct TYPE_6__ {int default_mode; int if_params; int subdev_name; TYPE_1__ output; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_routing ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (int ) ;
 int stub2 (struct osd_state*,int ) ;
 int stub3 (struct osd_state*,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int ,int,int ) ;
 int video ;
 struct encoder_config_info* vpbe_current_encoder_info (struct vpbe_device*) ;
 int vpbe_find_encoder_sd_index (struct vpbe_config*,int) ;
 int vpbe_get_mode_info (struct vpbe_device*,int ,int) ;

__attribute__((used)) static int vpbe_set_output(struct vpbe_device *vpbe_dev, int index)
{
 struct encoder_config_info *curr_enc_info =
   vpbe_current_encoder_info(vpbe_dev);
 struct vpbe_config *cfg = vpbe_dev->cfg;
 struct venc_platform_data *venc_device = vpbe_dev->venc_device;
 int enc_out_index;
 int sd_index;
 int ret;

 if (index >= cfg->num_outputs)
  return -EINVAL;

 mutex_lock(&vpbe_dev->lock);

 sd_index = vpbe_dev->current_sd_index;
 enc_out_index = cfg->outputs[index].output.index;
 if (strcmp(curr_enc_info->module_name,
     cfg->outputs[index].subdev_name)) {

  sd_index = vpbe_find_encoder_sd_index(cfg, index);
  if (sd_index < 0) {
   ret = -EINVAL;
   goto unlock;
  }

  ret = venc_device->setup_if_config(cfg->outputs[index].if_params);
  if (ret)
   goto unlock;
 }


 ret = v4l2_subdev_call(vpbe_dev->encoders[sd_index], video,
           s_routing, 0, enc_out_index, 0);
 if (ret)
  goto unlock;
 ret = vpbe_get_mode_info(vpbe_dev,
     cfg->outputs[index].default_mode, index);
 if (!ret) {
  struct osd_state *osd_device = vpbe_dev->osd_device;

  osd_device->ops.set_left_margin(osd_device,
   vpbe_dev->current_timings.left_margin);
  osd_device->ops.set_top_margin(osd_device,
  vpbe_dev->current_timings.upper_margin);
  vpbe_dev->current_sd_index = sd_index;
  vpbe_dev->current_out_index = index;
 }
unlock:
 mutex_unlock(&vpbe_dev->lock);
 return ret;
}

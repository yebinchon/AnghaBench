
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpbe_enc_mode_info {int timings_type; int std_id; } ;
struct vpbe_device {int current_out_index; struct vpbe_config* cfg; struct vpbe_enc_mode_info current_timings; } ;
struct vpbe_config {TYPE_2__* outputs; } ;
struct TYPE_3__ {int capabilities; } ;
struct TYPE_4__ {TYPE_1__ output; } ;


 int EINVAL ;
 int ENODATA ;
 int V4L2_OUT_CAP_STD ;
 int VPBE_ENC_STD ;

__attribute__((used)) static int vpbe_g_std(struct vpbe_device *vpbe_dev, v4l2_std_id *std_id)
{
 struct vpbe_enc_mode_info *cur_timings = &vpbe_dev->current_timings;
 struct vpbe_config *cfg = vpbe_dev->cfg;
 int out_index = vpbe_dev->current_out_index;

 if (!(cfg->outputs[out_index].output.capabilities & V4L2_OUT_CAP_STD))
  return -ENODATA;

 if (cur_timings->timings_type & VPBE_ENC_STD) {
  *std_id = cur_timings->std_id;
  return 0;
 }

 return -EINVAL;
}

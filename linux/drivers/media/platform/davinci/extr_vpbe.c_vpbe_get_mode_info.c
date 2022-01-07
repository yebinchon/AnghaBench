
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_enc_mode_info {int name; } ;
struct vpbe_device {struct vpbe_enc_mode_info current_timings; struct vpbe_config* cfg; } ;
struct vpbe_config {TYPE_1__* outputs; } ;
struct TYPE_2__ {int num_modes; struct vpbe_enc_mode_info* modes; } ;


 int EINVAL ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int vpbe_get_mode_info(struct vpbe_device *vpbe_dev, char *mode,
         int output_index)
{
 struct vpbe_config *cfg = vpbe_dev->cfg;
 struct vpbe_enc_mode_info var;
 int curr_output = output_index;
 int i;

 if (!mode)
  return -EINVAL;

 for (i = 0; i < cfg->outputs[curr_output].num_modes; i++) {
  var = cfg->outputs[curr_output].modes[i];
  if (!strcmp(mode, var.name)) {
   vpbe_dev->current_timings = var;
   return 0;
  }
 }

 return -EINVAL;
}

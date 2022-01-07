
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_enc_mode_info {int name; } ;
struct vpbe_device {int current_out_index; struct vpbe_enc_mode_info current_timings; struct vpbe_config* cfg; } ;
struct vpbe_config {TYPE_1__* outputs; } ;
struct TYPE_2__ {int num_modes; struct vpbe_enc_mode_info* modes; } ;


 int EINVAL ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int vpbe_get_std_info_by_name(struct vpbe_device *vpbe_dev,
    char *std_name)
{
 struct vpbe_config *cfg = vpbe_dev->cfg;
 struct vpbe_enc_mode_info var;
 int curr_output = vpbe_dev->current_out_index;
 int i;

 for (i = 0; i < vpbe_dev->cfg->outputs[curr_output].num_modes; i++) {
  var = cfg->outputs[curr_output].modes[i];
  if (!strcmp(var.name, std_name)) {
   vpbe_dev->current_timings = var;
   return 0;
  }
 }

 return -EINVAL;
}

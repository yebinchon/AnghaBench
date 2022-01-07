
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_device {int current_sd_index; struct vpbe_config* cfg; } ;
struct encoder_config_info {int dummy; } ;
struct vpbe_config {struct encoder_config_info* ext_encoders; struct encoder_config_info venc; } ;



__attribute__((used)) static struct encoder_config_info*
vpbe_current_encoder_info(struct vpbe_device *vpbe_dev)
{
 struct vpbe_config *cfg = vpbe_dev->cfg;
 int index = vpbe_dev->current_sd_index;

 return ((index == 0) ? &cfg->venc :
    &cfg->ext_encoders[index-1]);
}

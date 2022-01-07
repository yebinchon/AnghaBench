
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpbe_device {int current_out_index; struct vpbe_config* cfg; } ;
struct vpbe_config {int num_outputs; TYPE_2__* outputs; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ output; } ;


 int def_output ;
 int strcmp (int ,int ) ;
 int vpbe_set_output (struct vpbe_device*,int) ;

__attribute__((used)) static int vpbe_set_default_output(struct vpbe_device *vpbe_dev)
{
 struct vpbe_config *cfg = vpbe_dev->cfg;
 int i;

 for (i = 0; i < cfg->num_outputs; i++) {
  if (!strcmp(def_output,
       cfg->outputs[i].output.name)) {
   int ret = vpbe_set_output(vpbe_dev, i);

   if (!ret)
    vpbe_dev->current_out_index = i;
   return ret;
  }
 }
 return 0;
}

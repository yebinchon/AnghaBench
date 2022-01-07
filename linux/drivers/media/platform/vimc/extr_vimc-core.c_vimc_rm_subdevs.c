
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vimc_device {int * subdevs; TYPE_1__* pipe_cfg; } ;
struct TYPE_2__ {unsigned int num_ents; } ;


 int platform_device_unregister (int ) ;

__attribute__((used)) static void vimc_rm_subdevs(struct vimc_device *vimc)
{
 unsigned int i;

 for (i = 0; i < vimc->pipe_cfg->num_ents; i++)
  platform_device_unregister(vimc->subdevs[i]);
}

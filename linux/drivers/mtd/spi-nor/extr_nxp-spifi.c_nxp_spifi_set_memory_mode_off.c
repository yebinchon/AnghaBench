
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxp_spifi {int memory_mode; int dev; } ;


 int dev_err (int ,char*) ;
 int nxp_spifi_reset (struct nxp_spifi*) ;

__attribute__((used)) static int nxp_spifi_set_memory_mode_off(struct nxp_spifi *spifi)
{
 int ret;

 if (!spifi->memory_mode)
  return 0;

 ret = nxp_spifi_reset(spifi);
 if (ret)
  dev_err(spifi->dev, "unable to enter command mode\n");
 else
  spifi->memory_mode = 0;

 return ret;
}

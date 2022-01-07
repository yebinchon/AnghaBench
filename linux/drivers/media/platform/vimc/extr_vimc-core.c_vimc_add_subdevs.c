
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vimc_platform_data {int entity_name; } ;
struct TYPE_10__ {int dev; } ;
struct vimc_device {TYPE_4__** subdevs; TYPE_3__ pdev; TYPE_2__* pipe_cfg; } ;
struct component_match {int dummy; } ;
typedef int pdata ;
struct TYPE_11__ {int dev; } ;
struct TYPE_9__ {int num_ents; TYPE_1__* ents; } ;
struct TYPE_8__ {int drv; int name; } ;


 struct component_match* ERR_CAST (TYPE_4__*) ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int PLATFORM_DEVID_AUTO ;
 int component_match_add (int *,struct component_match**,int ,int *) ;
 int dev_dbg (int *,char*,int ) ;
 TYPE_4__* platform_device_register_data (int *,int ,int ,struct vimc_platform_data*,int) ;
 int platform_device_unregister (TYPE_4__*) ;
 int strscpy (int ,int ,int) ;
 int vimc_comp_compare ;

__attribute__((used)) static struct component_match *vimc_add_subdevs(struct vimc_device *vimc)
{
 struct component_match *match = ((void*)0);
 struct vimc_platform_data pdata;
 int i;

 for (i = 0; i < vimc->pipe_cfg->num_ents; i++) {
  dev_dbg(&vimc->pdev.dev, "new pdev for %s\n",
   vimc->pipe_cfg->ents[i].drv);

  strscpy(pdata.entity_name, vimc->pipe_cfg->ents[i].name,
   sizeof(pdata.entity_name));

  vimc->subdevs[i] = platform_device_register_data(&vimc->pdev.dev,
      vimc->pipe_cfg->ents[i].drv,
      PLATFORM_DEVID_AUTO,
      &pdata,
      sizeof(pdata));
  if (IS_ERR(vimc->subdevs[i])) {
   match = ERR_CAST(vimc->subdevs[i]);
   while (--i >= 0)
    platform_device_unregister(vimc->subdevs[i]);

   return match;
  }

  component_match_add(&vimc->pdev.dev, &match, vimc_comp_compare,
        &vimc->subdevs[i]->dev);
 }

 return match;
}

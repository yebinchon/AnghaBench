
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_clocks; int * device; int ** clocks; int * clock_gate; int * clk_names; } ;
struct s5p_mfc_dev {TYPE_2__* variant; TYPE_1__* plat_dev; TYPE_3__ pm; } ;
struct TYPE_5__ {int num_clocks; scalar_t__ use_clock_gating; int * clk_names; } ;
struct TYPE_4__ {int dev; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int atomic_set (int *,int ) ;
 int clk_ref ;
 int * devm_clk_get (int *,int ) ;
 int mfc_err (char*,int ) ;
 struct s5p_mfc_dev* p_dev ;
 TYPE_3__* pm ;
 int pm_runtime_enable (int *) ;

int s5p_mfc_init_pm(struct s5p_mfc_dev *dev)
{
 int i;

 pm = &dev->pm;
 p_dev = dev;

 pm->num_clocks = dev->variant->num_clocks;
 pm->clk_names = dev->variant->clk_names;
 pm->device = &dev->plat_dev->dev;
 pm->clock_gate = ((void*)0);


 for (i = 0; i < pm->num_clocks; i++) {
  pm->clocks[i] = devm_clk_get(pm->device, pm->clk_names[i]);
  if (IS_ERR(pm->clocks[i])) {

   if (i && PTR_ERR(pm->clocks[i]) == -ENOENT) {
    pm->clocks[i] = ((void*)0);
    continue;
   }
   mfc_err("Failed to get clock: %s\n",
    pm->clk_names[i]);
   return PTR_ERR(pm->clocks[i]);
  }
 }

 if (dev->variant->use_clock_gating)
  pm->clock_gate = pm->clocks[0];

 pm_runtime_enable(pm->device);
 atomic_set(&clk_ref, 0);
 return 0;
}

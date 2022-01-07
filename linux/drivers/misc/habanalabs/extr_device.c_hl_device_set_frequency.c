
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {scalar_t__ pm_mng_profile; int curr_pll_profile; TYPE_1__* asic_funcs; int dev; } ;
typedef enum hl_pll_frequency { ____Placeholder_hl_pll_frequency } hl_pll_frequency ;
struct TYPE_2__ {int (* set_pll_profile ) (struct hl_device*,int) ;} ;


 int PLL_HIGH ;
 scalar_t__ PM_MANUAL ;
 int dev_dbg (int ,char*,char*) ;
 int stub1 (struct hl_device*,int) ;

int hl_device_set_frequency(struct hl_device *hdev, enum hl_pll_frequency freq)
{
 if ((hdev->pm_mng_profile == PM_MANUAL) ||
   (hdev->curr_pll_profile == freq))
  return 0;

 dev_dbg(hdev->dev, "Changing device frequency to %s\n",
  freq == PLL_HIGH ? "high" : "low");

 hdev->asic_funcs->set_pll_profile(hdev, freq);

 hdev->curr_pll_profile = freq;

 return 1;
}

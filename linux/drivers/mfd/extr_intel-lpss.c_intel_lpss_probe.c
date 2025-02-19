
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_lpss_platform_info {scalar_t__ irq; TYPE_2__* mem; int properties; } ;
struct intel_lpss {scalar_t__ devid; TYPE_1__* cell; scalar_t__ priv; int caps; struct device* dev; struct intel_lpss_platform_info const* info; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct TYPE_4__ {int properties; } ;


 int DPM_FLAG_SMART_SUSPEND ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LPSS_IDMA64_DRIVER_NAME ;
 scalar_t__ LPSS_PRIV_CAPS ;
 scalar_t__ LPSS_PRIV_OFFSET ;
 int LPSS_PRIV_SIZE ;
 int dev_pm_set_driver_flags (struct device*,int ) ;
 int dev_set_drvdata (struct device*,struct intel_lpss*) ;
 int dev_warn (struct device*,char*,...) ;
 scalar_t__ devm_ioremap (struct device*,scalar_t__,int ) ;
 struct intel_lpss* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int intel_lpss_assign_devs (struct intel_lpss*) ;
 int intel_lpss_debugfs_add (struct intel_lpss*) ;
 int intel_lpss_debugfs_remove (struct intel_lpss*) ;
 int intel_lpss_devid_ida ;
 scalar_t__ intel_lpss_has_idma (struct intel_lpss*) ;
 TYPE_1__ intel_lpss_idma64_cell ;
 int intel_lpss_init_dev (struct intel_lpss*) ;
 int intel_lpss_ltr_expose (struct intel_lpss*) ;
 int intel_lpss_ltr_hide (struct intel_lpss*) ;
 int intel_lpss_register_clock (struct intel_lpss*) ;
 int intel_lpss_unregister_clock (struct intel_lpss*) ;
 int mfd_add_devices (struct device*,int,TYPE_1__*,int,TYPE_2__*,scalar_t__,int *) ;
 int readl (scalar_t__) ;

int intel_lpss_probe(struct device *dev,
       const struct intel_lpss_platform_info *info)
{
 struct intel_lpss *lpss;
 int ret;

 if (!info || !info->mem || info->irq <= 0)
  return -EINVAL;

 lpss = devm_kzalloc(dev, sizeof(*lpss), GFP_KERNEL);
 if (!lpss)
  return -ENOMEM;

 lpss->priv = devm_ioremap(dev, info->mem->start + LPSS_PRIV_OFFSET,
      LPSS_PRIV_SIZE);
 if (!lpss->priv)
  return -ENOMEM;

 lpss->info = info;
 lpss->dev = dev;
 lpss->caps = readl(lpss->priv + LPSS_PRIV_CAPS);

 dev_set_drvdata(dev, lpss);

 ret = intel_lpss_assign_devs(lpss);
 if (ret)
  return ret;

 lpss->cell->properties = info->properties;

 intel_lpss_init_dev(lpss);

 lpss->devid = ida_simple_get(&intel_lpss_devid_ida, 0, 0, GFP_KERNEL);
 if (lpss->devid < 0)
  return lpss->devid;

 ret = intel_lpss_register_clock(lpss);
 if (ret)
  goto err_clk_register;

 intel_lpss_ltr_expose(lpss);

 ret = intel_lpss_debugfs_add(lpss);
 if (ret)
  dev_warn(dev, "Failed to create debugfs entries\n");

 if (intel_lpss_has_idma(lpss)) {
  ret = mfd_add_devices(dev, lpss->devid, &intel_lpss_idma64_cell,
          1, info->mem, info->irq, ((void*)0));
  if (ret)
   dev_warn(dev, "Failed to add %s, fallback to PIO\n",
     LPSS_IDMA64_DRIVER_NAME);
 }

 ret = mfd_add_devices(dev, lpss->devid, lpss->cell,
         1, info->mem, info->irq, ((void*)0));
 if (ret)
  goto err_remove_ltr;

 dev_pm_set_driver_flags(dev, DPM_FLAG_SMART_SUSPEND);

 return 0;

err_remove_ltr:
 intel_lpss_debugfs_remove(lpss);
 intel_lpss_ltr_hide(lpss);
 intel_lpss_unregister_clock(lpss);

err_clk_register:
 ida_simple_remove(&intel_lpss_devid_ida, lpss->devid);

 return ret;
}

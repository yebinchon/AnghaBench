
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {int devid; } ;
struct device {int dummy; } ;


 struct intel_lpss* dev_get_drvdata (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int intel_lpss_debugfs_remove (struct intel_lpss*) ;
 int intel_lpss_devid_ida ;
 int intel_lpss_ltr_hide (struct intel_lpss*) ;
 int intel_lpss_unregister_clock (struct intel_lpss*) ;
 int mfd_remove_devices (struct device*) ;

void intel_lpss_remove(struct device *dev)
{
 struct intel_lpss *lpss = dev_get_drvdata(dev);

 mfd_remove_devices(dev);
 intel_lpss_debugfs_remove(lpss);
 intel_lpss_ltr_hide(lpss);
 intel_lpss_unregister_clock(lpss);
 ida_simple_remove(&intel_lpss_devid_ida, lpss->devid);
}

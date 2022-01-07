
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_dev {scalar_t__ regs; int protect_mutex; } ;
struct device {int dummy; } ;


 unsigned long EFAULT ;
 scalar_t__ HVA_HIF_REG_VERSION ;
 int HVA_PREFIX ;
 unsigned long HVA_VERSION_UNKNOWN ;

 unsigned long VERSION_ID_MASK ;
 int dev_dbg (struct device*,char*,int ,unsigned long) ;
 int dev_err (struct device*,char*,int ,...) ;
 struct device* hva_to_dev (struct hva_dev*) ;
 int mutex_unlock (int *) ;
 scalar_t__ pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 unsigned long readl_relaxed (scalar_t__) ;

__attribute__((used)) static unsigned long int hva_hw_get_ip_version(struct hva_dev *hva)
{
 struct device *dev = hva_to_dev(hva);
 unsigned long int version;

 if (pm_runtime_get_sync(dev) < 0) {
  dev_err(dev, "%s     failed to get pm_runtime\n", HVA_PREFIX);
  mutex_unlock(&hva->protect_mutex);
  return -EFAULT;
 }

 version = readl_relaxed(hva->regs + HVA_HIF_REG_VERSION) &
    VERSION_ID_MASK;

 pm_runtime_put_autosuspend(dev);

 switch (version) {
 case 128:
  dev_dbg(dev, "%s     IP hardware version 0x%lx\n",
   HVA_PREFIX, version);
  break;
 default:
  dev_err(dev, "%s     unknown IP hardware version 0x%lx\n",
   HVA_PREFIX, version);
  version = HVA_VERSION_UNKNOWN;
  break;
 }

 return version;
}

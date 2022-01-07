
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
struct device {int dummy; } ;


 struct hl_device* dev_get_drvdata (struct device*) ;
 int hl_device_resume (struct hl_device*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;

__attribute__((used)) static int hl_pmops_resume(struct device *dev)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 pr_debug("Going to resume PCI device\n");

 if (!hdev) {
  pr_err("device pointer is NULL in resume\n");
  return 0;
 }

 return hl_device_resume(hdev);
}

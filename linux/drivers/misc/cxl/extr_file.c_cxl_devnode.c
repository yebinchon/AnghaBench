
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int devt; } ;


 int CPU_FTR_HVMODE ;
 scalar_t__ CXL_DEVT_IS_CARD (int ) ;
 int GFP_KERNEL ;
 scalar_t__ cpu_has_feature (int ) ;
 int dev_name (struct device*) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *cxl_devnode(struct device *dev, umode_t *mode)
{
 if (cpu_has_feature(CPU_FTR_HVMODE) &&
     CXL_DEVT_IS_CARD(dev->devt)) {




  return ((void*)0);
 }
 return kasprintf(GFP_KERNEL, "cxl/%s", dev_name(dev));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct ocxl_fn {int * bar_used; TYPE_1__ dev; } ;


 int EINVAL ;
 int pci_request_region (struct pci_dev*,int,char*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int reserve_fn_bar(struct ocxl_fn *fn, int bar)
{
 struct pci_dev *dev = to_pci_dev(fn->dev.parent);
 int rc, idx;

 if (bar != 0 && bar != 2 && bar != 4)
  return -EINVAL;

 idx = bar >> 1;
 if (fn->bar_used[idx]++ == 0) {
  rc = pci_request_region(dev, bar, "ocxl");
  if (rc)
   return rc;
 }
 return 0;
}

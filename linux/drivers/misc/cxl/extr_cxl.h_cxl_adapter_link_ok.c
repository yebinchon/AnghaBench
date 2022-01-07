
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {TYPE_1__ dev; } ;


 int CPU_FTR_HVMODE ;
 scalar_t__ cpu_has_feature (int ) ;
 int pci_channel_offline (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static inline bool cxl_adapter_link_ok(struct cxl *cxl, struct cxl_afu *afu)
{
 struct pci_dev *pdev;

 if (cpu_has_feature(CPU_FTR_HVMODE)) {
  pdev = to_pci_dev(cxl->dev.parent);
  return !pci_channel_offline(pdev);
 }
 return 1;
}

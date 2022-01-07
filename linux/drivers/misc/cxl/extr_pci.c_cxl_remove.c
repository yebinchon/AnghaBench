
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct cxl {int slices; struct cxl_afu** afu; } ;


 int cxl_pci_remove_adapter (struct cxl*) ;
 int cxl_pci_remove_afu (struct cxl_afu*) ;
 struct cxl* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void cxl_remove(struct pci_dev *dev)
{
 struct cxl *adapter = pci_get_drvdata(dev);
 struct cxl_afu *afu;
 int i;





 for (i = 0; i < adapter->slices; i++) {
  afu = adapter->afu[i];
  cxl_pci_remove_afu(afu);
 }
 cxl_pci_remove_adapter(adapter);
}

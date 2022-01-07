
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int devfn; } ;
struct ocxl_fn_config {int dvsec_tl_pos; } ;


 int ENODEV ;
 int OCXL_DVSEC_TL_ID ;
 scalar_t__ PCI_FUNC (int ) ;
 int dev_err (int *,char*) ;
 int find_dvsec (struct pci_dev*,int ) ;

__attribute__((used)) static int read_dvsec_tl(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
 int pos;

 pos = find_dvsec(dev, OCXL_DVSEC_TL_ID);
 if (!pos && PCI_FUNC(dev->devfn) == 0) {
  dev_err(&dev->dev, "Can't find TL DVSEC\n");
  return -ENODEV;
 }
 if (pos && PCI_FUNC(dev->devfn) != 0) {
  dev_err(&dev->dev, "TL DVSEC is only allowed on function 0\n");
  return -ENODEV;
 }
 fn->dvsec_tl_pos = pos;
 return 0;
}

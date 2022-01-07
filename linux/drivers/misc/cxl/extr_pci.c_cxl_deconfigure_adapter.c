
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {TYPE_1__ dev; } ;


 scalar_t__ cxl_is_power9 () ;
 int cxl_native_release_psl_err_irq (struct cxl*) ;
 int cxl_unmap_adapter_regs (struct cxl*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pnv_pci_set_tunnel_bar (struct pci_dev*,int,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cxl_deconfigure_adapter(struct cxl *adapter)
{
 struct pci_dev *pdev = to_pci_dev(adapter->dev.parent);

 if (cxl_is_power9())
  pnv_pci_set_tunnel_bar(pdev, 0x00020000E0000000ull, 0);

 cxl_native_release_psl_err_irq(adapter);
 cxl_unmap_adapter_regs(adapter);

 pci_disable_device(pdev);
}

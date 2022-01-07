
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_legacy_intr_set {int tgt_mask_reg; int tgt_status_reg; int int_vec_bit; } ;
struct qlcnic_hardware_context {size_t pci_func; int int_vec_bit; } ;
struct qlcnic_adapter {TYPE_1__* msix_entries; void* crb_int_state_reg; void* isr_int_vec; void* tgt_mask_reg; void* tgt_status_reg; struct qlcnic_hardware_context* ahw; int flags; struct pci_dev* pdev; } ;
struct pci_dev {int irq; int dev; } ;
struct TYPE_2__ {int vector; } ;


 int EOPNOTSUPP ;
 int ISR_INT_STATE_REG ;
 int ISR_INT_VECTOR ;
 int QLCNIC_MSI_ENABLED ;
 int dev_info (int *,char*) ;
 struct qlcnic_legacy_intr_set* legacy_intr ;
 int * msi_tgt_status ;
 int pci_enable_msi (struct pci_dev*) ;
 void* qlcnic_get_ioaddr (struct qlcnic_hardware_context*,int ) ;
 scalar_t__ qlcnic_use_msi ;
 scalar_t__ qlcnic_use_msi_x ;

__attribute__((used)) static int qlcnic_enable_msi_legacy(struct qlcnic_adapter *adapter)
{
 int err = 0;
 u32 offset, mask_reg;
 const struct qlcnic_legacy_intr_set *legacy_intrp;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct pci_dev *pdev = adapter->pdev;

 if (qlcnic_use_msi && !pci_enable_msi(pdev)) {
  adapter->flags |= QLCNIC_MSI_ENABLED;
  offset = msi_tgt_status[adapter->ahw->pci_func];
  adapter->tgt_status_reg = qlcnic_get_ioaddr(adapter->ahw,
           offset);
  dev_info(&pdev->dev, "using msi interrupts\n");
  adapter->msix_entries[0].vector = pdev->irq;
  return err;
 }

 if (qlcnic_use_msi || qlcnic_use_msi_x)
  return -EOPNOTSUPP;

 legacy_intrp = &legacy_intr[adapter->ahw->pci_func];
 adapter->ahw->int_vec_bit = legacy_intrp->int_vec_bit;
 offset = legacy_intrp->tgt_status_reg;
 adapter->tgt_status_reg = qlcnic_get_ioaddr(ahw, offset);
 mask_reg = legacy_intrp->tgt_mask_reg;
 adapter->tgt_mask_reg = qlcnic_get_ioaddr(ahw, mask_reg);
 adapter->isr_int_vec = qlcnic_get_ioaddr(ahw, ISR_INT_VECTOR);
 adapter->crb_int_state_reg = qlcnic_get_ioaddr(ahw, ISR_INT_STATE_REG);
 dev_info(&pdev->dev, "using legacy interrupts\n");
 adapter->msix_entries[0].vector = pdev->irq;
 return err;
}

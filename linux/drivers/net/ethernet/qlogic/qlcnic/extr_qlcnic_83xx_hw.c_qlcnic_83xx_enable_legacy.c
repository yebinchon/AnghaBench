
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_hardware_context {scalar_t__ pci_base0; } ;
struct qlcnic_adapter {TYPE_2__* pdev; TYPE_1__* msix_entries; scalar_t__ isr_int_vec; scalar_t__ tgt_mask_reg; scalar_t__ tgt_status_reg; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int dev; int irq; } ;
struct TYPE_3__ {int vector; } ;


 scalar_t__ QLC_83XX_INTX_MASK ;
 scalar_t__ QLC_83XX_INTX_PTR ;
 scalar_t__ QLC_83XX_INTX_TRGR ;
 int dev_info (int *,char*) ;

__attribute__((used)) static void qlcnic_83xx_enable_legacy(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;


 adapter->tgt_status_reg = ahw->pci_base0 + QLC_83XX_INTX_PTR;
 adapter->tgt_mask_reg = ahw->pci_base0 + QLC_83XX_INTX_MASK;
 adapter->isr_int_vec = ahw->pci_base0 + QLC_83XX_INTX_TRGR;
 adapter->msix_entries[0].vector = adapter->pdev->irq;
 dev_info(&adapter->pdev->dev, "using legacy interrupt\n");
}

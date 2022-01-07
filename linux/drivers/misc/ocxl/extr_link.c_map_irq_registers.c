
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa {int reg_pe_handle; int reg_tfc; int reg_dar; int reg_dsisr; } ;
struct pci_dev {int dummy; } ;


 int pnv_ocxl_map_xsl_regs (struct pci_dev*,int *,int *,int *,int *) ;

__attribute__((used)) static int map_irq_registers(struct pci_dev *dev, struct spa *spa)
{
 return pnv_ocxl_map_xsl_regs(dev, &spa->reg_dsisr, &spa->reg_dar,
    &spa->reg_tfc, &spa->reg_pe_handle);
}

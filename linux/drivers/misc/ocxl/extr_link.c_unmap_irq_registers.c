
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa {int reg_pe_handle; int reg_tfc; int reg_dar; int reg_dsisr; } ;


 int pnv_ocxl_unmap_xsl_regs (int ,int ,int ,int ) ;

__attribute__((used)) static void unmap_irq_registers(struct spa *spa)
{
 pnv_ocxl_unmap_xsl_regs(spa->reg_dsisr, spa->reg_dar, spa->reg_tfc,
    spa->reg_pe_handle);
}

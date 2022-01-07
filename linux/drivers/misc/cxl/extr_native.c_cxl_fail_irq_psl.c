
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_irq_info {int dsisr; } ;
struct cxl_afu {int dummy; } ;
typedef int irqreturn_t ;


 int CXL_PSL_TFC_An ;
 int CXL_PSL_TFC_An_A ;
 int CXL_PSL_TFC_An_AE ;
 int IRQ_HANDLED ;
 scalar_t__ cxl_is_translation_fault (struct cxl_afu*,int ) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int ) ;

irqreturn_t cxl_fail_irq_psl(struct cxl_afu *afu, struct cxl_irq_info *irq_info)
{
 if (cxl_is_translation_fault(afu, irq_info->dsisr))
  cxl_p2n_write(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_AE);
 else
  cxl_p2n_write(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_A);

 return IRQ_HANDLED;
}

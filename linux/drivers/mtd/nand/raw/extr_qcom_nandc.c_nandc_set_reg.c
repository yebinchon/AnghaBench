
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_nand_controller {struct nandc_regs* regs; } ;
struct nandc_regs {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int * offset_to_nandc_reg (struct nandc_regs*,int) ;

__attribute__((used)) static void nandc_set_reg(struct qcom_nand_controller *nandc, int offset,
     u32 val)
{
 struct nandc_regs *regs = nandc->regs;
 __le32 *reg;

 reg = offset_to_nandc_reg(regs, offset);

 if (reg)
  *reg = cpu_to_le32(val);
}

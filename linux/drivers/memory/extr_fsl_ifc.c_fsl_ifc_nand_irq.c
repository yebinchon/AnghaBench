
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_ifc_ctrl {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ check_nand_stat (struct fsl_ifc_ctrl*) ;

__attribute__((used)) static irqreturn_t fsl_ifc_nand_irq(int irqno, void *data)
{
 struct fsl_ifc_ctrl *ctrl = data;

 if (check_nand_stat(ctrl))
  return IRQ_HANDLED;

 return IRQ_NONE;
}

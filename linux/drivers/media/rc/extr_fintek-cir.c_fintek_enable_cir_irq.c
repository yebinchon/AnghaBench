
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_dev {int dummy; } ;


 int CIR_STATUS ;
 int CIR_STATUS_IRQ_EN ;
 int fintek_cir_reg_write (struct fintek_dev*,int ,int ) ;

__attribute__((used)) static void fintek_enable_cir_irq(struct fintek_dev *fintek)
{
 fintek_cir_reg_write(fintek, CIR_STATUS_IRQ_EN, CIR_STATUS);
}

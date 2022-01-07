
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmi_nand_data {int bch_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int gpmi_clear_bch (struct gpmi_nand_data*) ;

__attribute__((used)) static irqreturn_t bch_irq(int irq, void *cookie)
{
 struct gpmi_nand_data *this = cookie;

 gpmi_clear_bch(this);
 complete(&this->bch_done);
 return IRQ_HANDLED;
}

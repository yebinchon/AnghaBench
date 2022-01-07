
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6397_chip {int * int_status; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mt6397_irq_handle_reg (struct mt6397_chip*,int ,int) ;

__attribute__((used)) static irqreturn_t mt6397_irq_thread(int irq, void *data)
{
 struct mt6397_chip *mt6397 = data;

 mt6397_irq_handle_reg(mt6397, mt6397->int_status[0], 0);
 mt6397_irq_handle_reg(mt6397, mt6397->int_status[1], 16);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct stmpe_variant_info {int num_irqs; } ;
struct stmpe {scalar_t__* ier; scalar_t__* oldier; int irq_lock; int * regs; struct stmpe_variant_info* variant; } ;
struct irq_data {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int STMPE_IDX_IER_LSB ;
 struct stmpe* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int stmpe_reg_write (struct stmpe*,int ,scalar_t__) ;

__attribute__((used)) static void stmpe_irq_sync_unlock(struct irq_data *data)
{
 struct stmpe *stmpe = irq_data_get_irq_chip_data(data);
 struct stmpe_variant_info *variant = stmpe->variant;
 int num = DIV_ROUND_UP(variant->num_irqs, 8);
 int i;

 for (i = 0; i < num; i++) {
  u8 new = stmpe->ier[i];
  u8 old = stmpe->oldier[i];

  if (new == old)
   continue;

  stmpe->oldier[i] = new;
  stmpe_reg_write(stmpe, stmpe->regs[STMPE_IDX_IER_LSB + i], new);
 }

 mutex_unlock(&stmpe->irq_lock);
}

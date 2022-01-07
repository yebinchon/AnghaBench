
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe_variant_info {scalar_t__ id_val; int num_irqs; } ;
struct stmpe {int* regs; int* ier; int domain; struct stmpe_variant_info* variant; } ;
typedef int irqreturn_t ;


 int DIV_ROUND_UP (int ,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ STMPE1600_ID ;
 scalar_t__ STMPE1801_ID ;
 scalar_t__ STMPE801_ID ;
 size_t STMPE_IDX_ISR_LSB ;
 size_t STMPE_IDX_ISR_MSB ;
 int __ffs (int) ;
 int handle_nested_irq (int) ;
 int irq_create_mapping (int ,int) ;
 int stmpe_block_read (struct stmpe*,int,int,int*) ;
 int stmpe_reg_write (struct stmpe*,int,int) ;

__attribute__((used)) static irqreturn_t stmpe_irq(int irq, void *data)
{
 struct stmpe *stmpe = data;
 struct stmpe_variant_info *variant = stmpe->variant;
 int num = DIV_ROUND_UP(variant->num_irqs, 8);
 u8 israddr;
 u8 isr[3];
 int ret;
 int i;

 if (variant->id_val == STMPE801_ID ||
     variant->id_val == STMPE1600_ID) {
  int base = irq_create_mapping(stmpe->domain, 0);

  handle_nested_irq(base);
  return IRQ_HANDLED;
 }

 if (variant->id_val == STMPE1801_ID)
  israddr = stmpe->regs[STMPE_IDX_ISR_LSB];
 else
  israddr = stmpe->regs[STMPE_IDX_ISR_MSB];

 ret = stmpe_block_read(stmpe, israddr, num, isr);
 if (ret < 0)
  return IRQ_NONE;

 for (i = 0; i < num; i++) {
  int bank = num - i - 1;
  u8 status = isr[i];
  u8 clear;

  status &= stmpe->ier[bank];
  if (!status)
   continue;

  clear = status;
  while (status) {
   int bit = __ffs(status);
   int line = bank * 8 + bit;
   int nestedirq = irq_create_mapping(stmpe->domain, line);

   handle_nested_irq(nestedirq);
   status &= ~(1 << bit);
  }

  stmpe_reg_write(stmpe, israddr + i, clear);
 }

 return IRQ_HANDLED;
}

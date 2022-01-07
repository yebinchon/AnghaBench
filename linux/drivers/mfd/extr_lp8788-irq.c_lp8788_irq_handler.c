
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct lp8788_irq_data {int domain; struct lp8788* lp; } ;
struct lp8788 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LP8788_INT_1 ;
 int LP8788_INT_MAX ;
 int NUM_REGS ;
 size_t _irq_to_addr (int) ;
 size_t _irq_to_mask (int) ;
 int handle_nested_irq (int ) ;
 int irq_find_mapping (int ,int) ;
 scalar_t__ lp8788_read_multi_bytes (struct lp8788*,int ,size_t*,int) ;

__attribute__((used)) static irqreturn_t lp8788_irq_handler(int irq, void *ptr)
{
 struct lp8788_irq_data *irqd = ptr;
 struct lp8788 *lp = irqd->lp;
 u8 status[NUM_REGS], addr, mask;
 bool handled = 0;
 int i;

 if (lp8788_read_multi_bytes(lp, LP8788_INT_1, status, NUM_REGS))
  return IRQ_NONE;

 for (i = 0 ; i < LP8788_INT_MAX ; i++) {
  addr = _irq_to_addr(i);
  mask = _irq_to_mask(i);


  if (status[addr] & mask) {
   handle_nested_irq(irq_find_mapping(irqd->domain, i));
   handled = 1;
  }
 }

 return handled ? IRQ_HANDLED : IRQ_NONE;
}

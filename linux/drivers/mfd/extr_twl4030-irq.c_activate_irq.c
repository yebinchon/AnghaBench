
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int irq_clear_status_flags (int,int) ;

__attribute__((used)) static inline void activate_irq(int irq)
{
 irq_clear_status_flags(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
}

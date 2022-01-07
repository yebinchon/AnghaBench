
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ full_duplex; } ;
struct ioc3_private {int ioc3_lock; int emcr; TYPE_1__ mii; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int emcr; int etcsr; } ;


 int EMCR_DUPLEX ;
 int ETCSR_FD ;
 int ETCSR_HD ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static inline void ioc3_setup_duplex(struct ioc3_private *ip)
{
 struct ioc3_ethregs *regs = ip->regs;

 spin_lock_irq(&ip->ioc3_lock);

 if (ip->mii.full_duplex) {
  writel(ETCSR_FD, &regs->etcsr);
  ip->emcr |= EMCR_DUPLEX;
 } else {
  writel(ETCSR_HD, &regs->etcsr);
  ip->emcr &= ~EMCR_DUPLEX;
 }
 writel(ip->emcr, &regs->emcr);

 spin_unlock_irq(&ip->ioc3_lock);
}

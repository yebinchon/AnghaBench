
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int eier; int emcr; } ;


 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static inline void ioc3_stop(struct ioc3_private *ip)
{
 struct ioc3_ethregs *regs = ip->regs;

 writel(0, &regs->emcr);
 writel(0, &regs->eier);
 readl(&regs->eier);
}

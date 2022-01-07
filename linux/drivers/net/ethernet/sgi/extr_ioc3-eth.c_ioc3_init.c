
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int ehar_h; int ehar_l; int ioc3_timer; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int ersr; int ehar_l; int ehar_h; int ertr; int ercsr; int etcdc; int erbar; int emcr; } ;


 int EMCR_RST ;
 int ERBAR_VAL ;
 int __ioc3_set_mac_address (struct net_device*) ;
 int del_timer_sync (int *) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int readl (int *) ;
 int udelay (int) ;
 int writel (int,int *) ;

__attribute__((used)) static void ioc3_init(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3_ethregs *regs = ip->regs;

 del_timer_sync(&ip->ioc3_timer);

 writel(EMCR_RST, &regs->emcr);
 readl(&regs->emcr);
 udelay(4);
 writel(0, &regs->emcr);
 readl(&regs->emcr);


 writel(ERBAR_VAL, &regs->erbar);
 readl(&regs->etcdc);
 writel(15, &regs->ercsr);
 writel(0, &regs->ertr);
 __ioc3_set_mac_address(dev);
 writel(ip->ehar_h, &regs->ehar_h);
 writel(ip->ehar_l, &regs->ehar_l);
 writel(42, &regs->ersr);
}

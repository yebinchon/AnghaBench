
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int micr; int midr_w; } ;


 int MICR_BUSY ;
 int MICR_PHYADDR_SHIFT ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void ioc3_mdio_write(struct net_device *dev, int phy, int reg, int data)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3_ethregs *regs = ip->regs;

 while (readl(&regs->micr) & MICR_BUSY)
  ;
 writel(data, &regs->midr_w);
 writel((phy << MICR_PHYADDR_SHIFT) | reg, &regs->micr);
 while (readl(&regs->micr) & MICR_BUSY)
  ;
}

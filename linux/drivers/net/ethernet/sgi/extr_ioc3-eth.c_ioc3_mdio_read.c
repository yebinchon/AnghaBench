
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int midr_r; int micr; } ;


 int MICR_BUSY ;
 int MICR_PHYADDR_SHIFT ;
 int MICR_READTRIG ;
 int MIDR_DATA_MASK ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int ioc3_mdio_read(struct net_device *dev, int phy, int reg)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3_ethregs *regs = ip->regs;

 while (readl(&regs->micr) & MICR_BUSY)
  ;
 writel((phy << MICR_PHYADDR_SHIFT) | reg | MICR_READTRIG,
        &regs->micr);
 while (readl(&regs->micr) & MICR_BUSY)
  ;

 return readl(&regs->midr_r) & MIDR_DATA_MASK;
}

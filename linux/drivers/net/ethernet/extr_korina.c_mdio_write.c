
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct korina_private {int rx_irq; TYPE_1__* eth_regs; } ;
struct TYPE_2__ {int miimwtd; int miimcmd; int miimaddr; int miimcfg; } ;


 int ETH_MII_CMD_SCN ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int writel (int,int *) ;

__attribute__((used)) static void mdio_write(struct net_device *dev, int mii_id, int reg, int val)
{
 struct korina_private *lp = netdev_priv(dev);

 mii_id = ((lp->rx_irq == 0x2c ? 1 : 0) << 8);

 writel(0, &lp->eth_regs->miimcfg);
 writel(1, &lp->eth_regs->miimcmd);
 writel(mii_id | reg, &lp->eth_regs->miimaddr);
 writel(ETH_MII_CMD_SCN, &lp->eth_regs->miimcmd);
 writel(val, &lp->eth_regs->miimwtd);
}

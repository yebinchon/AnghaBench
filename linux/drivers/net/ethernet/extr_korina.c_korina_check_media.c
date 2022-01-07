
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ full_duplex; } ;
struct korina_private {TYPE_1__* eth_regs; TYPE_2__ mii_if; } ;
struct TYPE_3__ {int ethmac2; } ;


 int ETH_MAC2_FD ;
 int mii_check_media (TYPE_2__*,int ,unsigned int) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void korina_check_media(struct net_device *dev, unsigned int init_media)
{
 struct korina_private *lp = netdev_priv(dev);

 mii_check_media(&lp->mii_if, 0, init_media);

 if (lp->mii_if.full_duplex)
  writel(readl(&lp->eth_regs->ethmac2) | ETH_MAC2_FD,
      &lp->eth_regs->ethmac2);
 else
  writel(readl(&lp->eth_regs->ethmac2) & ~ETH_MAC2_FD,
      &lp->eth_regs->ethmac2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; int phy_mode; } ;


 scalar_t__ AVE_CFGR ;
 int AVE_CFGR_CHE ;
 int AVE_CFGR_FLE ;
 int AVE_CFGR_IPFCEN ;
 int AVE_CFGR_MII ;
 scalar_t__ AVE_GRR ;
 int AVE_GRR_GRST ;
 int AVE_GRR_PHYRST ;
 scalar_t__ AVE_RSTCTRL ;
 int AVE_RSTCTRL_RMIIRST ;
 int ave_irq_disable_all (struct net_device*) ;
 int msleep (int) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int phy_interface_mode_is_rgmii (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ave_global_reset(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);
 u32 val;


 val = AVE_CFGR_FLE | AVE_CFGR_IPFCEN | AVE_CFGR_CHE;
 if (!phy_interface_mode_is_rgmii(priv->phy_mode))
  val |= AVE_CFGR_MII;
 writel(val, priv->base + AVE_CFGR);


 val = readl(priv->base + AVE_RSTCTRL);
 val &= ~AVE_RSTCTRL_RMIIRST;
 writel(val, priv->base + AVE_RSTCTRL);


 writel(AVE_GRR_GRST | AVE_GRR_PHYRST, priv->base + AVE_GRR);
 msleep(20);


 writel(AVE_GRR_GRST, priv->base + AVE_GRR);
 msleep(40);


 writel(0, priv->base + AVE_GRR);
 msleep(40);


 val = readl(priv->base + AVE_RSTCTRL);
 val |= AVE_RSTCTRL_RMIIRST;
 writel(val, priv->base + AVE_RSTCTRL);

 ave_irq_disable_all(ndev);
}

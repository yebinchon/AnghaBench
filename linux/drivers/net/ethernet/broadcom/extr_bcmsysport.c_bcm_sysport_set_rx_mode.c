
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; } ;
struct bcm_sysport_priv {scalar_t__ is_lite; } ;


 int CMD_PROMISC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int UMAC_CMD ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int umac_readl (struct bcm_sysport_priv*,int ) ;
 int umac_writel (struct bcm_sysport_priv*,int ,int ) ;

__attribute__((used)) static void bcm_sysport_set_rx_mode(struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 u32 reg;

 if (priv->is_lite)
  return;

 reg = umac_readl(priv, UMAC_CMD);
 if (dev->flags & IFF_PROMISC)
  reg |= CMD_PROMISC;
 else
  reg &= ~CMD_PROMISC;
 umac_writel(priv, reg, UMAC_CMD);


 if (dev->flags & IFF_ALLMULTI)
  return;
}

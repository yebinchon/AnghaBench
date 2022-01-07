
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_xgmac; } ;


 int REG_SPACE_SIZE ;
 int XGMAC_REGSIZE ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int stmmac_ethtool_get_regs_len(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 if (priv->plat->has_xgmac)
  return XGMAC_REGSIZE * 4;
 return REG_SPACE_SIZE;
}

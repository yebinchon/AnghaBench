
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {TYPE_1__* plat; int ioaddr; int hw; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int dummy; } ;
struct TYPE_2__ {int has_xgmac; } ;


 int DMA_BUS_MODE ;
 size_t ETHTOOL_DMA_OFFSET ;
 int NUM_DWMAC1000_DMA_REGS ;
 int memcpy (int *,int *,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_dump_dma_regs (struct stmmac_priv*,int ,int *) ;
 int stmmac_dump_mac_regs (struct stmmac_priv*,int ,int *) ;

__attribute__((used)) static void stmmac_ethtool_gregs(struct net_device *dev,
     struct ethtool_regs *regs, void *space)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 u32 *reg_space = (u32 *) space;

 stmmac_dump_mac_regs(priv, priv->hw, reg_space);
 stmmac_dump_dma_regs(priv, priv->ioaddr, reg_space);

 if (!priv->plat->has_xgmac) {

  memcpy(&reg_space[ETHTOOL_DMA_OFFSET],
         &reg_space[DMA_BUS_MODE / 4],
         NUM_DWMAC1000_DMA_REGS * 4);
 }
}

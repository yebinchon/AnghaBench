
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int eee_enabled; int eee_active; } ;
struct bcmgenet_priv {int clk_eee_enabled; int base; TYPE_2__ eee; int clk_eee; TYPE_1__* hw_params; } ;
struct TYPE_3__ {int tbuf_offset; } ;


 int EEE_EN ;
 int RBUF_EEE_EN ;
 int RBUF_ENERGY_CTRL ;
 int RBUF_PM_EN ;
 int TBUF_EEE_EN ;
 int TBUF_ENERGY_CTRL ;
 int TBUF_PM_EN ;
 int UMAC_EEE_CTRL ;
 int bcmgenet_rbuf_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rbuf_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_readl (int) ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_writel (int,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcmgenet_eee_enable_set(struct net_device *dev, bool enable)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 u32 off = priv->hw_params->tbuf_offset + TBUF_ENERGY_CTRL;
 u32 reg;

 if (enable && !priv->clk_eee_enabled) {
  clk_prepare_enable(priv->clk_eee);
  priv->clk_eee_enabled = 1;
 }

 reg = bcmgenet_umac_readl(priv, UMAC_EEE_CTRL);
 if (enable)
  reg |= EEE_EN;
 else
  reg &= ~EEE_EN;
 bcmgenet_umac_writel(priv, reg, UMAC_EEE_CTRL);


 reg = bcmgenet_readl(priv->base + off);
 if (enable)
  reg |= TBUF_EEE_EN | TBUF_PM_EN;
 else
  reg &= ~(TBUF_EEE_EN | TBUF_PM_EN);
 bcmgenet_writel(reg, priv->base + off);


 reg = bcmgenet_rbuf_readl(priv, RBUF_ENERGY_CTRL);
 if (enable)
  reg |= RBUF_EEE_EN | RBUF_PM_EN;
 else
  reg &= ~(RBUF_EEE_EN | RBUF_PM_EN);
 bcmgenet_rbuf_writel(priv, reg, RBUF_ENERGY_CTRL);

 if (!enable && priv->clk_eee_enabled) {
  clk_disable_unprepare(priv->clk_eee);
  priv->clk_eee_enabled = 0;
 }

 priv->eee.eee_enabled = enable;
 priv->eee.eee_active = enable;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {scalar_t__ is_lite; } ;


 int CMD_SW_RESET ;
 int UMAC_CMD ;
 int udelay (int) ;
 int umac_readl (struct bcm_sysport_priv*,int ) ;
 int umac_writel (struct bcm_sysport_priv*,int ,int ) ;

__attribute__((used)) static inline void umac_reset(struct bcm_sysport_priv *priv)
{
 u32 reg;

 if (priv->is_lite)
  return;

 reg = umac_readl(priv, UMAC_CMD);
 reg |= CMD_SW_RESET;
 umac_writel(priv, reg, UMAC_CMD);
 udelay(10);
 reg = umac_readl(priv, UMAC_CMD);
 reg &= ~CMD_SW_RESET;
 umac_writel(priv, reg, UMAC_CMD);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {scalar_t__ crc_fwd_en; int dev; } ;
typedef enum bcmgenet_power_mode { ____Placeholder_bcmgenet_power_mode } bcmgenet_power_mode ;


 int CMD_CRC_FWD ;
 int GENET_POWER_WOL_MAGIC ;
 int MPD_EN ;
 int UMAC_CMD ;
 int UMAC_MPD_CTRL ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int,int ) ;
 int netif_err (struct bcmgenet_priv*,int ,int ,char*,int) ;
 int wol ;

void bcmgenet_wol_power_up_cfg(struct bcmgenet_priv *priv,
          enum bcmgenet_power_mode mode)
{
 u32 reg;

 if (mode != GENET_POWER_WOL_MAGIC) {
  netif_err(priv, wol, priv->dev, "invalid mode: %d\n", mode);
  return;
 }

 reg = bcmgenet_umac_readl(priv, UMAC_MPD_CTRL);
 if (!(reg & MPD_EN))
  return;
 reg &= ~MPD_EN;
 bcmgenet_umac_writel(priv, reg, UMAC_MPD_CTRL);


 reg = bcmgenet_umac_readl(priv, UMAC_CMD);
 reg &= ~CMD_CRC_FWD;
 bcmgenet_umac_writel(priv, reg, UMAC_CMD);
 priv->crc_fwd_en = 0;
}

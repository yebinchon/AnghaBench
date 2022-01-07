
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {int crc_fwd_en; TYPE_1__* hw_params; struct net_device* dev; } ;
typedef enum bcmgenet_power_mode { ____Placeholder_bcmgenet_power_mode } bcmgenet_power_mode ;
struct TYPE_2__ {int flags; } ;


 int CMD_CRC_FWD ;
 int CMD_RX_EN ;
 int EINVAL ;
 int EXT_ENERGY_DET_MASK ;
 int EXT_EXT_PWR_MGMT ;
 int GENET_HAS_EXT ;
 int GENET_POWER_WOL_MAGIC ;
 int MPD_EN ;
 int UMAC_CMD ;
 int UMAC_MPD_CTRL ;
 int bcmgenet_ext_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_ext_writel (struct bcmgenet_priv*,int ,int ) ;
 int bcmgenet_poll_wol_status (struct bcmgenet_priv*) ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int ,int ) ;
 int mdelay (int) ;
 int netif_dbg (struct bcmgenet_priv*,int ,struct net_device*,char*,int) ;
 int netif_err (struct bcmgenet_priv*,int ,struct net_device*,char*,int) ;
 int wol ;

int bcmgenet_wol_power_down_cfg(struct bcmgenet_priv *priv,
    enum bcmgenet_power_mode mode)
{
 struct net_device *dev = priv->dev;
 int retries = 0;
 u32 reg;

 if (mode != GENET_POWER_WOL_MAGIC) {
  netif_err(priv, wol, dev, "unsupported mode: %d\n", mode);
  return -EINVAL;
 }


 reg = bcmgenet_umac_readl(priv, UMAC_CMD);
 reg &= ~CMD_RX_EN;
 bcmgenet_umac_writel(priv, reg, UMAC_CMD);
 mdelay(10);

 reg = bcmgenet_umac_readl(priv, UMAC_MPD_CTRL);
 reg |= MPD_EN;
 bcmgenet_umac_writel(priv, reg, UMAC_MPD_CTRL);


 retries = bcmgenet_poll_wol_status(priv);
 if (retries < 0) {
  reg = bcmgenet_umac_readl(priv, UMAC_MPD_CTRL);
  reg &= ~MPD_EN;
  bcmgenet_umac_writel(priv, reg, UMAC_MPD_CTRL);
  return retries;
 }

 netif_dbg(priv, wol, dev, "MPD WOL-ready status set after %d msec\n",
    retries);


 reg = bcmgenet_umac_readl(priv, UMAC_CMD);
 priv->crc_fwd_en = 1;
 reg |= CMD_CRC_FWD;


 reg |= CMD_RX_EN;
 bcmgenet_umac_writel(priv, reg, UMAC_CMD);

 if (priv->hw_params->flags & GENET_HAS_EXT) {
  reg = bcmgenet_ext_readl(priv, EXT_EXT_PWR_MGMT);
  reg &= ~EXT_ENERGY_DET_MASK;
  bcmgenet_ext_writel(priv, reg, EXT_EXT_PWR_MGMT);
 }

 return 0;
}

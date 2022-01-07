
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_enet_priv {int enetsw_mdio_lock; } ;


 int ENETSW_MDIOC_EXT_MASK ;
 int ENETSW_MDIOC_PHYID_SHIFT ;
 int ENETSW_MDIOC_RD_MASK ;
 int ENETSW_MDIOC_REG ;
 int ENETSW_MDIOC_REG_SHIFT ;
 int ENETSW_MDIOD_REG ;
 int enetsw_readw (struct bcm_enet_priv*,int ) ;
 int enetsw_writel (struct bcm_enet_priv*,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int udelay (int) ;

__attribute__((used)) static int bcmenet_sw_mdio_read(struct bcm_enet_priv *priv,
    int ext, int phy_id, int location)
{
 u32 reg;
 int ret;

 spin_lock_bh(&priv->enetsw_mdio_lock);
 enetsw_writel(priv, 0, ENETSW_MDIOC_REG);

 reg = ENETSW_MDIOC_RD_MASK |
  (phy_id << ENETSW_MDIOC_PHYID_SHIFT) |
  (location << ENETSW_MDIOC_REG_SHIFT);

 if (ext)
  reg |= ENETSW_MDIOC_EXT_MASK;

 enetsw_writel(priv, reg, ENETSW_MDIOC_REG);
 udelay(50);
 ret = enetsw_readw(priv, ENETSW_MDIOD_REG);
 spin_unlock_bh(&priv->enetsw_mdio_lock);
 return ret;
}

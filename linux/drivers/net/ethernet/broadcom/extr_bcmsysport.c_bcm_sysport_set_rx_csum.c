
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bcm_sysport_priv {int rx_chk_en; scalar_t__ crc_fwd; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXCSUM ;
 int RXCHK_BRCM_TAG_EN ;
 int RXCHK_CONTROL ;
 int RXCHK_EN ;
 int RXCHK_L2_HDR_DIS ;
 int RXCHK_SKIP_FCS ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netdev_uses_dsa (struct net_device*) ;
 int rxchk_readl (struct bcm_sysport_priv*,int ) ;
 int rxchk_writel (struct bcm_sysport_priv*,int ,int ) ;

__attribute__((used)) static void bcm_sysport_set_rx_csum(struct net_device *dev,
        netdev_features_t wanted)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 u32 reg;

 priv->rx_chk_en = !!(wanted & NETIF_F_RXCSUM);
 reg = rxchk_readl(priv, RXCHK_CONTROL);



 reg &= ~RXCHK_L2_HDR_DIS;
 if (priv->rx_chk_en)
  reg |= RXCHK_EN;
 else
  reg &= ~RXCHK_EN;




 if (priv->rx_chk_en && priv->crc_fwd)
  reg |= RXCHK_SKIP_FCS;
 else
  reg &= ~RXCHK_SKIP_FCS;





 if (netdev_uses_dsa(dev))
  reg |= RXCHK_BRCM_TAG_EN;
 else
  reg &= ~RXCHK_BRCM_TAG_EN;

 rxchk_writel(priv, reg, RXCHK_CONTROL);
}

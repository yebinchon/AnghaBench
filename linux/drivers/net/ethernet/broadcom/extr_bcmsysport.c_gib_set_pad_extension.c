
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {int netdev; } ;


 int ENET_BRCM_TAG_LEN ;
 int GIB_CONTROL ;
 int GIB_IPG_LEN_MASK ;
 int GIB_IPG_LEN_SHIFT ;
 int GIB_PAD_EXTENSION_MASK ;
 int GIB_PAD_EXTENSION_SHIFT ;
 int gib_readl (struct bcm_sysport_priv*,int ) ;
 int gib_writel (struct bcm_sysport_priv*,int,int ) ;
 scalar_t__ netdev_uses_dsa (int ) ;

__attribute__((used)) static inline void gib_set_pad_extension(struct bcm_sysport_priv *priv)
{
 u32 reg;

 reg = gib_readl(priv, GIB_CONTROL);

 if (netdev_uses_dsa(priv->netdev)) {
  reg &= ~(GIB_PAD_EXTENSION_MASK << GIB_PAD_EXTENSION_SHIFT);
  reg |= ENET_BRCM_TAG_LEN << GIB_PAD_EXTENSION_SHIFT;
 }
 reg &= ~(GIB_IPG_LEN_MASK << GIB_IPG_LEN_SHIFT);
 reg |= 12 << GIB_IPG_LEN_SHIFT;
 gib_writel(priv, reg, GIB_CONTROL);
}

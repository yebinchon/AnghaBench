
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_enet_priv {scalar_t__ use_external_mii; } ;


 int ENET_CTL_EPHYSEL_MASK ;
 int ENET_CTL_REG ;
 int ENET_CTL_SRESET_MASK ;
 int ENET_MIBCTL_RDCLEAR_MASK ;
 int ENET_MIBCTL_REG ;
 int ENET_MIISC_MDCFREQDIV_SHIFT ;
 int ENET_MIISC_PREAMBLEEN_MASK ;
 int ENET_MIISC_REG ;
 int bcm_enet_disable_mac (struct bcm_enet_priv*) ;
 int enet_readl (struct bcm_enet_priv*,int ) ;
 int enet_writel (struct bcm_enet_priv*,int,int ) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static void bcm_enet_hw_preinit(struct bcm_enet_priv *priv)
{
 u32 val;
 int limit;


 bcm_enet_disable_mac(priv);


 val = ENET_CTL_SRESET_MASK;
 enet_writel(priv, val, ENET_CTL_REG);
 wmb();

 limit = 1000;
 do {
  val = enet_readl(priv, ENET_CTL_REG);
  if (!(val & ENET_CTL_SRESET_MASK))
   break;
  udelay(1);
 } while (limit--);


 val = enet_readl(priv, ENET_CTL_REG);
 if (priv->use_external_mii)
  val |= ENET_CTL_EPHYSEL_MASK;
 else
  val &= ~ENET_CTL_EPHYSEL_MASK;
 enet_writel(priv, val, ENET_CTL_REG);


 enet_writel(priv, (0x1f << ENET_MIISC_MDCFREQDIV_SHIFT) |
      ENET_MIISC_PREAMBLEEN_MASK, ENET_MIISC_REG);


 val = enet_readl(priv, ENET_MIBCTL_REG);
 val |= ENET_MIBCTL_RDCLEAR_MASK;
 enet_writel(priv, val, ENET_MIBCTL_REG);
}

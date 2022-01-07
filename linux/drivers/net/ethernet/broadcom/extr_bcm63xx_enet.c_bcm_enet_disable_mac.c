
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_enet_priv {int dummy; } ;


 int ENET_CTL_DISABLE_MASK ;
 int ENET_CTL_REG ;
 int enet_readl (struct bcm_enet_priv*,int ) ;
 int enet_writel (struct bcm_enet_priv*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void bcm_enet_disable_mac(struct bcm_enet_priv *priv)
{
 int limit;
 u32 val;

 val = enet_readl(priv, ENET_CTL_REG);
 val |= ENET_CTL_DISABLE_MASK;
 enet_writel(priv, val, ENET_CTL_REG);

 limit = 1000;
 do {
  u32 val;

  val = enet_readl(priv, ENET_CTL_REG);
  if (!(val & ENET_CTL_DISABLE_MASK))
   break;
  udelay(1);
 } while (limit--);
}

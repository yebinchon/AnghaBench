
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_enet_priv {int dummy; } ;


 int ENET_TXCTL_FD_MASK ;
 int ENET_TXCTL_REG ;
 int enet_readl (struct bcm_enet_priv*,int ) ;
 int enet_writel (struct bcm_enet_priv*,int ,int ) ;

__attribute__((used)) static void bcm_enet_set_duplex(struct bcm_enet_priv *priv, int fullduplex)
{
 u32 val;

 val = enet_readl(priv, ENET_TXCTL_REG);
 if (fullduplex)
  val |= ENET_TXCTL_FD_MASK;
 else
  val &= ~ENET_TXCTL_FD_MASK;
 enet_writel(priv, val, ENET_TXCTL_REG);
}

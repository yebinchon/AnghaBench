
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_enet_priv {int dummy; } ;


 int ENETDMAC_CHANCFG ;
 int ENETDMAC_CHANCFG_EN_MASK ;
 int enet_dmac_readl (struct bcm_enet_priv*,int ,int) ;
 int enet_dmac_writel (struct bcm_enet_priv*,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void bcm_enet_disable_dma(struct bcm_enet_priv *priv, int chan)
{
 int limit;

 enet_dmac_writel(priv, 0, ENETDMAC_CHANCFG, chan);

 limit = 1000;
 do {
  u32 val;

  val = enet_dmac_readl(priv, ENETDMAC_CHANCFG, chan);
  if (!(val & ENETDMAC_CHANCFG_EN_MASK))
   break;
  udelay(1);
 } while (limit--);
}

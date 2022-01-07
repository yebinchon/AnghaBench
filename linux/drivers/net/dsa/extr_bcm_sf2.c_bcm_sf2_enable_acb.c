
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int dummy; } ;


 int ACB_ALGORITHM ;
 int ACB_CONTROL ;
 int ACB_EN ;
 int ACB_FLUSH_MASK ;
 int ACB_FLUSH_SHIFT ;
 int acb_readl (struct bcm_sf2_priv*,int ) ;
 int acb_writel (struct bcm_sf2_priv*,int,int ) ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;

__attribute__((used)) static void bcm_sf2_enable_acb(struct dsa_switch *ds)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 u32 reg;


 reg = acb_readl(priv, ACB_CONTROL);
 reg |= (ACB_FLUSH_MASK << ACB_FLUSH_SHIFT);
 acb_writel(priv, reg, ACB_CONTROL);
 reg &= ~(ACB_FLUSH_MASK << ACB_FLUSH_SHIFT);
 reg |= ACB_EN | ACB_ALGORITHM;
 acb_writel(priv, reg, ACB_CONTROL);
}

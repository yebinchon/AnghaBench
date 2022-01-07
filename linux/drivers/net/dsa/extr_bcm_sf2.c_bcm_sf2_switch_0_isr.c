
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int irq0_stat; int irq0_mask; } ;
typedef int irqreturn_t ;


 int INTRL2_CPU_CLEAR ;
 int INTRL2_CPU_STATUS ;
 int IRQ_HANDLED ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int intrl2_0_readl (struct bcm_sf2_priv*,int ) ;
 int intrl2_0_writel (struct bcm_sf2_priv*,int,int ) ;

__attribute__((used)) static irqreturn_t bcm_sf2_switch_0_isr(int irq, void *dev_id)
{
 struct dsa_switch *ds = dev_id;
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);

 priv->irq0_stat = intrl2_0_readl(priv, INTRL2_CPU_STATUS) &
    ~priv->irq0_mask;
 intrl2_0_writel(priv, priv->irq0_stat, INTRL2_CPU_CLEAR);

 return IRQ_HANDLED;
}

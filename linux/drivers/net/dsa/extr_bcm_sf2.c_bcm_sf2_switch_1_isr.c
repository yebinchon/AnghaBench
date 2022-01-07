
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int irq1_stat; int irq1_mask; TYPE_1__* port_sts; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int link; } ;


 int INTRL2_CPU_CLEAR ;
 int INTRL2_CPU_STATUS ;
 int IRQ_HANDLED ;
 int P7_IRQ_OFF ;
 int P_LINK_DOWN_IRQ (int ) ;
 int P_LINK_UP_IRQ (int ) ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int dsa_port_phylink_mac_change (struct dsa_switch*,int,int) ;
 int intrl2_1_readl (struct bcm_sf2_priv*,int ) ;
 int intrl2_1_writel (struct bcm_sf2_priv*,int,int ) ;

__attribute__((used)) static irqreturn_t bcm_sf2_switch_1_isr(int irq, void *dev_id)
{
 struct dsa_switch *ds = dev_id;
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);

 priv->irq1_stat = intrl2_1_readl(priv, INTRL2_CPU_STATUS) &
    ~priv->irq1_mask;
 intrl2_1_writel(priv, priv->irq1_stat, INTRL2_CPU_CLEAR);

 if (priv->irq1_stat & P_LINK_UP_IRQ(P7_IRQ_OFF)) {
  priv->port_sts[7].link = 1;
  dsa_port_phylink_mac_change(ds, 7, 1);
 }
 if (priv->irq1_stat & P_LINK_DOWN_IRQ(P7_IRQ_OFF)) {
  priv->port_sts[7].link = 0;
  dsa_port_phylink_mac_change(ds, 7, 0);
 }

 return IRQ_HANDLED;
}

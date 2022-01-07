
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54p_priv {int boot_comp; int tasklet; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;
typedef int irqreturn_t ;
typedef int __le32 ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISL38XX_INT_IDENT_INIT ;
 int ISL38XX_INT_IDENT_UPDATE ;
 int P54P_READ (int ) ;
 int P54P_WRITE (int ,int) ;
 int complete (int *) ;
 int cpu_to_le32 (int) ;
 int int_ack ;
 int int_enable ;
 int int_ident ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t p54p_interrupt(int irq, void *dev_id)
{
 struct ieee80211_hw *dev = dev_id;
 struct p54p_priv *priv = dev->priv;
 __le32 reg;

 reg = P54P_READ(int_ident);
 if (unlikely(reg == cpu_to_le32(0xFFFFFFFF))) {
  goto out;
 }
 P54P_WRITE(int_ack, reg);

 reg &= P54P_READ(int_enable);

 if (reg & cpu_to_le32(ISL38XX_INT_IDENT_UPDATE))
  tasklet_schedule(&priv->tasklet);
 else if (reg & cpu_to_le32(ISL38XX_INT_IDENT_INIT))
  complete(&priv->boot_comp);

out:
 return reg ? IRQ_HANDLED : IRQ_NONE;
}

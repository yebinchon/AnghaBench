
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sun4ican_priv {int cmdreg_lock; scalar_t__ base; } ;


 scalar_t__ SUN4I_REG_CMD_ADDR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_can_write_cmdreg(struct sun4ican_priv *priv, u8 val)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->cmdreg_lock, flags);
 writel(val, priv->base + SUN4I_REG_CMD_ADDR);
 spin_unlock_irqrestore(&priv->cmdreg_lock, flags);
}

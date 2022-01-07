
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct technologic_priv {int io_lock; } ;
struct sja1000_priv {scalar_t__ reg_base; struct technologic_priv* priv; } ;


 int iowrite16 (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sp_technologic_write_reg16(const struct sja1000_priv *priv,
           int reg, u8 val)
{
 struct technologic_priv *tp = priv->priv;
 unsigned long flags;

 spin_lock_irqsave(&tp->io_lock, flags);
 iowrite16(reg, priv->reg_base + 0);
 iowrite16(val, priv->reg_base + 2);
 spin_unlock_irqrestore(&tp->io_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct technologic_priv {int io_lock; } ;
struct sja1000_priv {scalar_t__ reg_base; struct technologic_priv* priv; } ;


 int ioread16 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 sp_technologic_read_reg16(const struct sja1000_priv *priv, int reg)
{
 struct technologic_priv *tp = priv->priv;
 unsigned long flags;
 u8 val;

 spin_lock_irqsave(&tp->io_lock, flags);
 iowrite16(reg, priv->reg_base + 0);
 val = ioread16(priv->reg_base + 2);
 spin_unlock_irqrestore(&tp->io_lock, flags);

 return val;
}

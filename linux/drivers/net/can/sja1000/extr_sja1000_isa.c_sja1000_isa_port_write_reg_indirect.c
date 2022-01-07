
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sja1000_priv {TYPE_1__* dev; scalar_t__ reg_base; } ;
struct TYPE_2__ {size_t dev_id; } ;


 int * indirect_lock ;
 int outb (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sja1000_isa_port_write_reg_indirect(const struct sja1000_priv *priv,
      int reg, u8 val)
{
 unsigned long flags, base = (unsigned long)priv->reg_base;

 spin_lock_irqsave(&indirect_lock[priv->dev->dev_id], flags);
 outb(reg, base);
 outb(val, base + 1);
 spin_unlock_irqrestore(&indirect_lock[priv->dev->dev_id], flags);
}

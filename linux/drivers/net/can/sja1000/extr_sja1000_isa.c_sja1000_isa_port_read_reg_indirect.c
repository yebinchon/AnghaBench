
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sja1000_priv {TYPE_1__* dev; scalar_t__ reg_base; } ;
struct TYPE_2__ {size_t dev_id; } ;


 int inb (unsigned long) ;
 int * indirect_lock ;
 int outb (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 sja1000_isa_port_read_reg_indirect(const struct sja1000_priv *priv,
          int reg)
{
 unsigned long flags, base = (unsigned long)priv->reg_base;
 u8 readval;

 spin_lock_irqsave(&indirect_lock[priv->dev->dev_id], flags);
 outb(reg, base);
 readval = inb(base + 1);
 spin_unlock_irqrestore(&indirect_lock[priv->dev->dev_id], flags);

 return readval;
}

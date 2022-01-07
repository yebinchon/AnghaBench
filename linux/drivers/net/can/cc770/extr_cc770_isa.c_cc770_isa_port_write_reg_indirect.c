
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cc770_priv {scalar_t__ reg_base; } ;


 int cc770_isa_port_lock ;
 int outb (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cc770_isa_port_write_reg_indirect(const struct cc770_priv *priv,
      int reg, u8 val)
{
 unsigned long base = (unsigned long)priv->reg_base;
 unsigned long flags;

 spin_lock_irqsave(&cc770_isa_port_lock, flags);
 outb(reg, base);
 outb(val, base + 1);
 spin_unlock_irqrestore(&cc770_isa_port_lock, flags);
}

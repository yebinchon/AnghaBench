
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cc770_priv {scalar_t__ reg_base; } ;


 int cc770_isa_port_lock ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 cc770_isa_port_read_reg_indirect(const struct cc770_priv *priv,
          int reg)
{
 unsigned long base = (unsigned long)priv->reg_base;
 unsigned long flags;
 u8 val;

 spin_lock_irqsave(&cc770_isa_port_lock, flags);
 outb(reg, base);
 val = inb(base + 1);
 spin_unlock_irqrestore(&cc770_isa_port_lock, flags);

 return val;
}

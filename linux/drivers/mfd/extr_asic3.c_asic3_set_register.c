
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asic3 {int lock; } ;


 int asic3_read_register (struct asic3*,int ) ;
 int asic3_write_register (struct asic3*,int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void asic3_set_register(struct asic3 *asic, u32 reg, u32 bits, bool set)
{
 unsigned long flags;
 u32 val;

 raw_spin_lock_irqsave(&asic->lock, flags);
 val = asic3_read_register(asic, reg);
 if (set)
  val |= bits;
 else
  val &= ~bits;
 asic3_write_register(asic, reg, val);
 raw_spin_unlock_irqrestore(&asic->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int reg_lock; } ;


 int _il_grab_nic_access (struct il_priv*) ;
 int _il_release_nic_access (struct il_priv*) ;
 int _il_wr_prph (struct il_priv*,int ,int ) ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il_wr_prph(struct il_priv *il, u32 addr, u32 val)
{
 unsigned long reg_flags;

 spin_lock_irqsave(&il->reg_lock, reg_flags);
 if (likely(_il_grab_nic_access(il))) {
  _il_wr_prph(il, addr, val);
  _il_release_nic_access(il);
 }
 spin_unlock_irqrestore(&il->reg_lock, reg_flags);
}

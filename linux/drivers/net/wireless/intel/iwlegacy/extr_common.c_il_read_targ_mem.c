
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int reg_lock; } ;


 int HBUS_TARG_MEM_RADDR ;
 int HBUS_TARG_MEM_RDAT ;
 int _il_grab_nic_access (struct il_priv*) ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_release_nic_access (struct il_priv*) ;
 int _il_wr (struct il_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32
il_read_targ_mem(struct il_priv *il, u32 addr)
{
 unsigned long reg_flags;
 u32 value;

 spin_lock_irqsave(&il->reg_lock, reg_flags);
 _il_grab_nic_access(il);

 _il_wr(il, HBUS_TARG_MEM_RADDR, addr);
 value = _il_rd(il, HBUS_TARG_MEM_RDAT);

 _il_release_nic_access(il);
 spin_unlock_irqrestore(&il->reg_lock, reg_flags);
 return value;
}

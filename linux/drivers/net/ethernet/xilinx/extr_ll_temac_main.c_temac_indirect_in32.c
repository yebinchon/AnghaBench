
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int indirect_lock; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int temac_indirect_in32_locked (struct temac_local*,int) ;

u32 temac_indirect_in32(struct temac_local *lp, int reg)
{
 unsigned long flags;
 int val;

 spin_lock_irqsave(lp->indirect_lock, flags);
 val = temac_indirect_in32_locked(lp, reg);
 spin_unlock_irqrestore(lp->indirect_lock, flags);
 return val;
}

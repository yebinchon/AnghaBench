
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_pci {int intmask_lock; } ;


 int MANTIS_INT_MASK ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void mantis_mask_ints(struct mantis_pci *mantis, u32 mask)
{
 unsigned long flags;

 spin_lock_irqsave(&mantis->intmask_lock, flags);
 mmwrite(mmread(MANTIS_INT_MASK) & ~mask, MANTIS_INT_MASK);
 spin_unlock_irqrestore(&mantis->intmask_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ prcmu_base ;
 int prcmu_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

void db8500_prcmu_write(unsigned int reg, u32 value)
{
 unsigned long flags;

 spin_lock_irqsave(&prcmu_lock, flags);
 writel(value, (prcmu_base + reg));
 spin_unlock_irqrestore(&prcmu_lock, flags);
}

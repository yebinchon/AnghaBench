
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dbb_wakeups; } ;
struct TYPE_4__ {int lock; TYPE_1__ req; } ;


 int BIT (int) ;
 int BUG_ON (int) ;
 int NUM_PRCMU_WAKEUP_INDICES ;
 int VALID_WAKEUPS ;
 int config_wakeups () ;
 TYPE_2__ mb0_transfer ;
 int* prcmu_wakeup_bit ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void db8500_prcmu_enable_wakeups(u32 wakeups)
{
 unsigned long flags;
 u32 bits;
 int i;

 BUG_ON(wakeups != (wakeups & VALID_WAKEUPS));

 for (i = 0, bits = 0; i < NUM_PRCMU_WAKEUP_INDICES; i++) {
  if (wakeups & BIT(i))
   bits |= prcmu_wakeup_bit[i];
 }

 spin_lock_irqsave(&mb0_transfer.lock, flags);

 mb0_transfer.req.dbb_wakeups = bits;
 config_wakeups();

 spin_unlock_irqrestore(&mb0_transfer.lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int config_wakeups () ;
 TYPE_1__ mb0_transfer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void prcmu_mask_work(struct work_struct *work)
{
 unsigned long flags;

 spin_lock_irqsave(&mb0_transfer.lock, flags);

 config_wakeups();

 spin_unlock_irqrestore(&mb0_transfer.lock, flags);
}

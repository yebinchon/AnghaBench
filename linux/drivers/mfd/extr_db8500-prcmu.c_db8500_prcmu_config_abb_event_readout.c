
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int abb_events; } ;
struct TYPE_4__ {int lock; TYPE_1__ req; } ;


 int config_wakeups () ;
 TYPE_2__ mb0_transfer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void db8500_prcmu_config_abb_event_readout(u32 abb_events)
{
 unsigned long flags;

 spin_lock_irqsave(&mb0_transfer.lock, flags);

 mb0_transfer.req.abb_events = abb_events;
 config_wakeups();

 spin_unlock_irqrestore(&mb0_transfer.lock, flags);
}

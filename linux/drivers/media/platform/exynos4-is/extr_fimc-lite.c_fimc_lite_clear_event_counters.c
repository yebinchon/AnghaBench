
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_lite {int slock; int events; } ;


 int memset (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fimc_lite_clear_event_counters(struct fimc_lite *fimc)
{
 unsigned long flags;

 spin_lock_irqsave(&fimc->slock, flags);
 memset(&fimc->events, 0, sizeof(fimc->events));
 spin_unlock_irqrestore(&fimc->slock, flags);
}

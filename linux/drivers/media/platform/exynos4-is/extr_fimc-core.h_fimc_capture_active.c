
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_dev {int state; int slock; } ;


 int ST_CAPT_PEND ;
 int ST_CAPT_RUN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline bool fimc_capture_active(struct fimc_dev *fimc)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&fimc->slock, flags);
 ret = !!(fimc->state & (1 << ST_CAPT_RUN) ||
   fimc->state & (1 << ST_CAPT_PEND));
 spin_unlock_irqrestore(&fimc->slock, flags);
 return ret;
}

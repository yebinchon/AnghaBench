
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_lite {int state; int slock; } ;


 int ST_FLITE_PENDING ;
 int ST_FLITE_RUN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline bool fimc_lite_active(struct fimc_lite *fimc)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&fimc->slock, flags);
 ret = fimc->state & (1 << ST_FLITE_RUN) ||
  fimc->state & (1 << ST_FLITE_PENDING);
 spin_unlock_irqrestore(&fimc->slock, flags);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ispstat {scalar_t__ state; TYPE_2__* isp; TYPE_1__* ops; } ;
struct TYPE_4__ {int stat_lock; } ;
struct TYPE_3__ {int (* enable ) (struct ispstat*,int ) ;} ;


 scalar_t__ ISPSTAT_DISABLED ;
 scalar_t__ ISPSTAT_ENABLED ;
 scalar_t__ ISPSTAT_SUSPENDED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ispstat*,int ) ;

void omap3isp_stat_suspend(struct ispstat *stat)
{
 unsigned long flags;

 spin_lock_irqsave(&stat->isp->stat_lock, flags);

 if (stat->state != ISPSTAT_DISABLED)
  stat->ops->enable(stat, 0);
 if (stat->state == ISPSTAT_ENABLED)
  stat->state = ISPSTAT_SUSPENDED;

 spin_unlock_irqrestore(&stat->isp->stat_lock, flags);
}

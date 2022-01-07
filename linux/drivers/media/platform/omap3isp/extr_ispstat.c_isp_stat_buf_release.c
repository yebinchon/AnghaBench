
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ispstat {TYPE_1__* isp; int * locked_buf; } ;
struct TYPE_2__ {int stat_lock; } ;


 int isp_stat_buf_sync_for_device (struct ispstat*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void isp_stat_buf_release(struct ispstat *stat)
{
 unsigned long flags;

 isp_stat_buf_sync_for_device(stat, stat->locked_buf);
 spin_lock_irqsave(&stat->isp->stat_lock, flags);
 stat->locked_buf = ((void*)0);
 spin_unlock_irqrestore(&stat->isp->stat_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ispstat {int sbl_ovl_recover; TYPE_1__* isp; scalar_t__ recover_priv; int buf_err; } ;
struct TYPE_2__ {int stat_lock; } ;


 int atomic_set (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void omap3isp_stat_sbl_overflow(struct ispstat *stat)
{
 unsigned long irqflags;

 spin_lock_irqsave(&stat->isp->stat_lock, irqflags);




 atomic_set(&stat->buf_err, 2);







 if (stat->recover_priv)
  stat->sbl_ovl_recover = 1;
 spin_unlock_irqrestore(&stat->isp->stat_lock, irqflags);
}

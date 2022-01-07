
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct ispstat {scalar_t__ state; int update; TYPE_3__* isp; TYPE_2__ subdev; int buf_err; int active_buf; int * priv; TYPE_1__* ops; scalar_t__ buf_alloc_size; int buf_processing; } ;
struct TYPE_6__ {int stat_lock; int dev; } ;
struct TYPE_4__ {int (* setup_regs ) (struct ispstat*,int *) ;} ;


 scalar_t__ ISPSTAT_ENABLING ;
 int IS_H3A (struct ispstat*) ;
 int atomic_set (int *,int ) ;
 int dev_dbg (int ,char*,int ) ;
 int isp_stat_buf_insert_magic (struct ispstat*,int ) ;
 int isp_stat_buf_next (struct ispstat*) ;
 int isp_stat_pcr_enable (struct ispstat*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ispstat*,int *) ;

__attribute__((used)) static void isp_stat_try_enable(struct ispstat *stat)
{
 unsigned long irqflags;

 if (stat->priv == ((void*)0))

  return;

 spin_lock_irqsave(&stat->isp->stat_lock, irqflags);
 if (stat->state == ISPSTAT_ENABLING && !stat->buf_processing &&
     stat->buf_alloc_size) {




  stat->update = 1;
  isp_stat_buf_next(stat);
  stat->ops->setup_regs(stat, stat->priv);
  isp_stat_buf_insert_magic(stat, stat->active_buf);







  if (!IS_H3A(stat))
   atomic_set(&stat->buf_err, 0);

  isp_stat_pcr_enable(stat, 1);
  spin_unlock_irqrestore(&stat->isp->stat_lock, irqflags);
  dev_dbg(stat->isp->dev, "%s: module is enabled.\n",
   stat->subdev.name);
 } else {
  spin_unlock_irqrestore(&stat->isp->stat_lock, irqflags);
 }
}

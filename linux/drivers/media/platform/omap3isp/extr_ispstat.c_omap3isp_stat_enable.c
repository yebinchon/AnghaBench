
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int name; } ;
struct ispstat {scalar_t__ state; int ioctl_lock; TYPE_2__* isp; TYPE_1__ subdev; int configured; } ;
struct TYPE_4__ {int stat_lock; int dev; } ;


 int EINVAL ;
 scalar_t__ ISPSTAT_DISABLED ;
 scalar_t__ ISPSTAT_DISABLING ;
 scalar_t__ ISPSTAT_ENABLED ;
 scalar_t__ ISPSTAT_ENABLING ;
 int dev_dbg (int ,char*,int ,...) ;
 int isp_stat_buf_clear (struct ispstat*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int omap3isp_stat_enable(struct ispstat *stat, u8 enable)
{
 unsigned long irqflags;

 dev_dbg(stat->isp->dev, "%s: user wants to %s module.\n",
  stat->subdev.name, enable ? "enable" : "disable");


 mutex_lock(&stat->ioctl_lock);

 spin_lock_irqsave(&stat->isp->stat_lock, irqflags);

 if (!stat->configured && enable) {
  spin_unlock_irqrestore(&stat->isp->stat_lock, irqflags);
  mutex_unlock(&stat->ioctl_lock);
  dev_dbg(stat->isp->dev,
   "%s: cannot enable module as it's never been successfully configured so far.\n",
   stat->subdev.name);
  return -EINVAL;
 }

 if (enable) {
  if (stat->state == ISPSTAT_DISABLING)

   stat->state = ISPSTAT_ENABLED;
  else if (stat->state == ISPSTAT_DISABLED)

   stat->state = ISPSTAT_ENABLING;
 } else {
  if (stat->state == ISPSTAT_ENABLING) {

   stat->state = ISPSTAT_DISABLED;
  } else if (stat->state == ISPSTAT_ENABLED) {

   stat->state = ISPSTAT_DISABLING;
   isp_stat_buf_clear(stat);
  }
 }

 spin_unlock_irqrestore(&stat->isp->stat_lock, irqflags);
 mutex_unlock(&stat->ioctl_lock);

 return 0;
}

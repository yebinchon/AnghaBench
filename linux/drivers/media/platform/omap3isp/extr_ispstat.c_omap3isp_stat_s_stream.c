
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct ispstat {TYPE_1__ subdev; TYPE_2__* isp; TYPE_3__* ops; } ;
struct TYPE_6__ {int (* enable ) (struct ispstat*,int ) ;} ;
struct TYPE_5__ {int dev; int stat_lock; } ;


 int dev_dbg (int ,char*,int ) ;
 int isp_stat_try_enable (struct ispstat*) ;
 int omap3isp_stat_enable (struct ispstat*,int ) ;
 int omap3isp_stat_isr (struct ispstat*) ;
 int omap3isp_stat_pcr_busy (struct ispstat*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ispstat*,int ) ;
 struct ispstat* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int omap3isp_stat_s_stream(struct v4l2_subdev *subdev, int enable)
{
 struct ispstat *stat = v4l2_get_subdevdata(subdev);

 if (enable) {




  isp_stat_try_enable(stat);
 } else {
  unsigned long flags;

  omap3isp_stat_enable(stat, 0);
  spin_lock_irqsave(&stat->isp->stat_lock, flags);
  stat->ops->enable(stat, 0);
  spin_unlock_irqrestore(&stat->isp->stat_lock, flags);
  if (!omap3isp_stat_pcr_busy(stat))
   omap3isp_stat_isr(stat);

  dev_dbg(stat->isp->dev, "%s: module is being disabled\n",
   stat->subdev.name);
 }

 return 0;
}

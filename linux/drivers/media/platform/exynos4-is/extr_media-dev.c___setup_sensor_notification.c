
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct fimc_source_info {int dummy; } ;
struct fimc_sensor_info {int host; } ;
struct fimc_md {int slock; } ;


 scalar_t__ WARN_ON (int ) ;
 struct fimc_sensor_info* source_to_sensor_info (struct fimc_source_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fimc_source_info* v4l2_get_subdev_hostdata (struct v4l2_subdev*) ;
 int v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void __setup_sensor_notification(struct fimc_md *fmd,
     struct v4l2_subdev *sensor,
     struct v4l2_subdev *fimc_sd)
{
 struct fimc_source_info *src_inf;
 struct fimc_sensor_info *md_si;
 unsigned long flags;

 src_inf = v4l2_get_subdev_hostdata(sensor);
 if (!src_inf || WARN_ON(fmd == ((void*)0)))
  return;

 md_si = source_to_sensor_info(src_inf);
 spin_lock_irqsave(&fmd->slock, flags);
 md_si->host = v4l2_get_subdevdata(fimc_sd);
 spin_unlock_irqrestore(&fmd->slock, flags);
}

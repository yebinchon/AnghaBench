
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int subdev; } ;


 int v4l2_device_unregister_subdev (int *) ;

void omap3isp_stat_unregister_entities(struct ispstat *stat)
{
 v4l2_device_unregister_subdev(&stat->subdev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int dummy; } ;


 int isp_stat_try_enable (struct ispstat*) ;

void omap3isp_stat_isr_frame_sync(struct ispstat *stat)
{
 isp_stat_try_enable(stat);
}

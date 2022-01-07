
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {scalar_t__ state; } ;


 scalar_t__ ISPSTAT_ENABLING ;
 scalar_t__ ISPSTAT_SUSPENDED ;

void omap3isp_stat_resume(struct ispstat *stat)
{

 if (stat->state == ISPSTAT_SUSPENDED)
  stat->state = ISPSTAT_ENABLING;
}

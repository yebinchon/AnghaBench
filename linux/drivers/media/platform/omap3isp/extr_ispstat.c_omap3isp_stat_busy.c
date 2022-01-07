
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int buf_processing; scalar_t__ state; } ;


 scalar_t__ ISPSTAT_DISABLED ;
 int omap3isp_stat_pcr_busy (struct ispstat*) ;

int omap3isp_stat_busy(struct ispstat *stat)
{
 return omap3isp_stat_pcr_busy(stat) | stat->buf_processing |
  (stat->state != ISPSTAT_DISABLED);
}

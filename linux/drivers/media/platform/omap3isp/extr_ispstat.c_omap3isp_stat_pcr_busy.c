
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ispstat {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* busy ) (struct ispstat*) ;} ;


 int stub1 (struct ispstat*) ;

int omap3isp_stat_pcr_busy(struct ispstat *stat)
{
 return stat->ops->busy(stat);
}

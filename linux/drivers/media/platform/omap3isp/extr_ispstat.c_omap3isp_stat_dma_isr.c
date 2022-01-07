
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {int dummy; } ;


 int __stat_isr (struct ispstat*,int) ;

void omap3isp_stat_dma_isr(struct ispstat *stat)
{
 __stat_isr(stat, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int coproc_tics_per_us; } ;
struct octeon_device {TYPE_1__ pfvf_hsword; } ;


 int cn23xx_coprocessor_clock (struct octeon_device*) ;

u32 cn23xx_pf_get_oq_ticks(struct octeon_device *oct, u32 time_intr_in_us)
{

 u32 oqticks_per_us = cn23xx_coprocessor_clock(oct);

 oct->pfvf_hsword.coproc_tics_per_us = oqticks_per_us;


 oqticks_per_us *= 1000;


 oqticks_per_us /= 1024;




 oqticks_per_us *= time_intr_in_us;
 oqticks_per_us /= 1000;

 return oqticks_per_us;
}

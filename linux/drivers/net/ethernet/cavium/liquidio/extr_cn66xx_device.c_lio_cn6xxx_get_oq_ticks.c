
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int dummy; } ;


 int lio_cn6xxx_coprocessor_clock (struct octeon_device*) ;

u32 lio_cn6xxx_get_oq_ticks(struct octeon_device *oct,
       u32 time_intr_in_us)
{

 u32 oqticks_per_us = lio_cn6xxx_coprocessor_clock(oct);






 oqticks_per_us *= 1000;


 oqticks_per_us /= 1024;




 oqticks_per_us *= time_intr_in_us;
 oqticks_per_us /= 1000;

 return oqticks_per_us;
}

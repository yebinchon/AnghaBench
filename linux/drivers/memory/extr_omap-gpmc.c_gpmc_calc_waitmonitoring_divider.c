
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPMC_CONFIG1_WAITMONITORINGTIME_MAX ;
 int gpmc_ns_to_ticks (unsigned int) ;

__attribute__((used)) static int gpmc_calc_waitmonitoring_divider(unsigned int wait_monitoring)
{

 int div = gpmc_ns_to_ticks(wait_monitoring);

 div += GPMC_CONFIG1_WAITMONITORINGTIME_MAX - 1;
 div /= GPMC_CONFIG1_WAITMONITORINGTIME_MAX;

 if (div > 4)
  return -1;
 if (div <= 0)
  div = 1;

 return div;

}

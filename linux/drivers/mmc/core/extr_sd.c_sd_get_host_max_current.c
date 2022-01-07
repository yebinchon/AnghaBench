
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vdd; } ;
struct mmc_host {int max_current_180; int max_current_300; int max_current_330; TYPE_1__ ios; } ;
__attribute__((used)) static u32 sd_get_host_max_current(struct mmc_host *host)
{
 u32 voltage, max_current;

 voltage = 1 << host->ios.vdd;
 switch (voltage) {
 case 132:
  max_current = host->max_current_180;
  break;
 case 131:
 case 130:
  max_current = host->max_current_300;
  break;
 case 129:
 case 128:
  max_current = host->max_current_330;
  break;
 default:
  max_current = 0;
 }

 return max_current;
}

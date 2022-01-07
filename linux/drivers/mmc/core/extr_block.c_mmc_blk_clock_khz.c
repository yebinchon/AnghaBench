
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock; } ;
struct mmc_host {int actual_clock; TYPE_1__ ios; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static unsigned int mmc_blk_clock_khz(struct mmc_host *host)
{
 if (host->actual_clock)
  return host->actual_clock / 1000;


 if (host->ios.clock)
  return host->ios.clock / 2000;


 WARN_ON_ONCE(1);
 return 100;
}

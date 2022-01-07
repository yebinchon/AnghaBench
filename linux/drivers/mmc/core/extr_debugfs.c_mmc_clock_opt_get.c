
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int clock; } ;
struct mmc_host {TYPE_1__ ios; } ;



__attribute__((used)) static int mmc_clock_opt_get(void *data, u64 *val)
{
 struct mmc_host *host = data;

 *val = host->ios.clock;

 return 0;
}

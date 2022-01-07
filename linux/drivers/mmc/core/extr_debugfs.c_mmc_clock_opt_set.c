
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mmc_host {scalar_t__ f_max; scalar_t__ f_min; } ;


 int EINVAL ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_set_clock (struct mmc_host*,unsigned int) ;

__attribute__((used)) static int mmc_clock_opt_set(void *data, u64 val)
{
 struct mmc_host *host = data;


 if (val != 0 && (val > host->f_max || val < host->f_min))
  return -EINVAL;

 mmc_claim_host(host);
 mmc_set_clock(host, (unsigned int) val);
 mmc_release_host(host);

 return 0;
}

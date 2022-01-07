
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvm_mmc_host {int global_pwr_gpiod; int shared_power_users; } ;


 int atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void octeon_mmc_set_shared_power(struct cvm_mmc_host *host, int dir)
{
 if (dir == 0)
  if (!atomic_dec_return(&host->shared_power_users))
   gpiod_set_value_cansleep(host->global_pwr_gpiod, 0);
 if (dir == 1)
  if (atomic_inc_return(&host->shared_power_users) == 1)
   gpiod_set_value_cansleep(host->global_pwr_gpiod, 1);
}

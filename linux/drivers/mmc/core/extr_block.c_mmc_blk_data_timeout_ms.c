
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ timeout_clks; scalar_t__ timeout_ns; } ;


 unsigned int DIV_ROUND_UP (scalar_t__,unsigned int) ;
 unsigned int mmc_blk_clock_khz (struct mmc_host*) ;

__attribute__((used)) static unsigned int mmc_blk_data_timeout_ms(struct mmc_host *host,
         struct mmc_data *data)
{
 unsigned int ms = DIV_ROUND_UP(data->timeout_ns, 1000000);
 unsigned int khz;

 if (data->timeout_clks) {
  khz = mmc_blk_clock_khz(host);
  ms += DIV_ROUND_UP(data->timeout_clks, khz);
 }

 return ms;
}

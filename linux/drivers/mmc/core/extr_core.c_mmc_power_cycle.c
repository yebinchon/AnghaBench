
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;


 int mmc_delay (int) ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_power_up (struct mmc_host*,int ) ;

void mmc_power_cycle(struct mmc_host *host, u32 ocr)
{
 mmc_power_off(host);

 mmc_delay(1);
 mmc_power_up(host, ocr);
}

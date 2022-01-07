
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int f_init; } ;


 int mmc_go_idle (struct mmc_host*) ;
 int mmc_sdio_reinit_card (struct mmc_host*) ;
 int mmc_set_clock (struct mmc_host*,int ) ;
 int mmc_set_initial_signal_voltage (struct mmc_host*) ;
 int mmc_set_initial_state (struct mmc_host*) ;
 int sdio_reset (struct mmc_host*) ;

__attribute__((used)) static int mmc_sdio_sw_reset(struct mmc_host *host)
{
 mmc_set_clock(host, host->f_init);
 sdio_reset(host);
 mmc_go_idle(host);

 mmc_set_initial_state(host);
 mmc_set_initial_signal_voltage(host);

 return mmc_sdio_reinit_card(host);
}

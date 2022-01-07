
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable_sdio_irq; int execute_tuning; int init_card; int start_signal_voltage_switch; int set_ios; } ;
struct sdhci_host {TYPE_1__ mmc_host_ops; } ;


 int xenon_enable_sdio_irq ;
 int xenon_execute_tuning ;
 int xenon_init_card ;
 int xenon_set_ios ;
 int xenon_start_signal_voltage_switch ;

__attribute__((used)) static void xenon_replace_mmc_host_ops(struct sdhci_host *host)
{
 host->mmc_host_ops.set_ios = xenon_set_ios;
 host->mmc_host_ops.start_signal_voltage_switch =
   xenon_start_signal_voltage_switch;
 host->mmc_host_ops.init_card = xenon_init_card;
 host->mmc_host_ops.execute_tuning = xenon_execute_tuning;
 host->mmc_host_ops.enable_sdio_irq = xenon_enable_sdio_irq;
}

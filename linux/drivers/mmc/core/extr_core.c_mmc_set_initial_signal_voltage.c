
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int MMC_SIGNAL_VOLTAGE_120 ;
 int MMC_SIGNAL_VOLTAGE_180 ;
 int MMC_SIGNAL_VOLTAGE_330 ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_set_signal_voltage (struct mmc_host*,int ) ;

void mmc_set_initial_signal_voltage(struct mmc_host *host)
{

 if (!mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_330))
  dev_dbg(mmc_dev(host), "Initial signal voltage of 3.3v\n");
 else if (!mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_180))
  dev_dbg(mmc_dev(host), "Initial signal voltage of 1.8v\n");
 else if (!mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_120))
  dev_dbg(mmc_dev(host), "Initial signal voltage of 1.2v\n");
}

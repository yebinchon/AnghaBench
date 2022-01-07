
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {TYPE_1__* ops; } ;
struct mmc_command {int flags; int* resp; scalar_t__ arg; int opcode; } ;
struct TYPE_2__ {scalar_t__ (* card_busy ) (struct mmc_host*) ;int start_signal_voltage_switch; } ;


 int EAGAIN ;
 int EIO ;
 int EPERM ;
 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int R1_ERROR ;
 int SD_SWITCH_VOLTAGE ;
 int mmc_delay (int) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 scalar_t__ mmc_host_set_uhs_voltage (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_power_cycle (struct mmc_host*,int ) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;
 int pr_debug (char*,int ) ;
 int pr_warn (char*,int ) ;
 scalar_t__ stub1 (struct mmc_host*) ;
 scalar_t__ stub2 (struct mmc_host*) ;

int mmc_set_uhs_voltage(struct mmc_host *host, u32 ocr)
{
 struct mmc_command cmd = {};
 int err = 0;





 if (!host->ops->start_signal_voltage_switch)
  return -EPERM;
 if (!host->ops->card_busy)
  pr_warn("%s: cannot verify signal voltage switch\n",
   mmc_hostname(host));

 cmd.opcode = SD_SWITCH_VOLTAGE;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;

 err = mmc_wait_for_cmd(host, &cmd, 0);
 if (err)
  return err;

 if (!mmc_host_is_spi(host) && (cmd.resp[0] & R1_ERROR))
  return -EIO;





 mmc_delay(1);
 if (host->ops->card_busy && !host->ops->card_busy(host)) {
  err = -EAGAIN;
  goto power_cycle;
 }

 if (mmc_host_set_uhs_voltage(host)) {




  err = -EAGAIN;
  goto power_cycle;
 }


 mmc_delay(1);





 if (host->ops->card_busy && host->ops->card_busy(host))
  err = -EAGAIN;

power_cycle:
 if (err) {
  pr_debug("%s: Signal voltage switch failed, "
   "power cycling card\n", mmc_hostname(host));
  mmc_power_cycle(host, ocr);
 }

 return err;
}

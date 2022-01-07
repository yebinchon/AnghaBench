
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned char timing; } ;
struct mmc_host {unsigned int max_busy_timeout; int caps; TYPE_1__ ios; } ;
struct mmc_command {int arg; int flags; unsigned int busy_timeout; int sanitize_busy; int opcode; } ;
struct mmc_card {struct mmc_host* host; } ;


 int EXT_CSD_SANITIZE_START ;
 int MMC_CAP_WAIT_WHILE_BUSY ;
 int MMC_CMD_AC ;
 int MMC_CMD_RETRIES ;
 int MMC_RSP_R1 ;
 int MMC_RSP_R1B ;
 int MMC_RSP_SPI_R1 ;
 int MMC_RSP_SPI_R1B ;
 int MMC_SWITCH ;
 int MMC_SWITCH_MODE_WRITE_BYTE ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_poll_for_busy (struct mmc_card*,unsigned int,int,int) ;
 int mmc_retune_hold (struct mmc_host*) ;
 int mmc_retune_release (struct mmc_host*) ;
 int mmc_set_timing (struct mmc_host*,unsigned char) ;
 int mmc_switch_status (struct mmc_card*) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int __mmc_switch(struct mmc_card *card, u8 set, u8 index, u8 value,
  unsigned int timeout_ms, unsigned char timing,
  bool use_busy_signal, bool send_status, bool retry_crc_err)
{
 struct mmc_host *host = card->host;
 int err;
 struct mmc_command cmd = {};
 bool use_r1b_resp = use_busy_signal;
 unsigned char old_timing = host->ios.timing;

 mmc_retune_hold(host);







 if (timeout_ms && host->max_busy_timeout &&
  (timeout_ms > host->max_busy_timeout))
  use_r1b_resp = 0;

 cmd.opcode = MMC_SWITCH;
 cmd.arg = (MMC_SWITCH_MODE_WRITE_BYTE << 24) |
    (index << 16) |
    (value << 8) |
    set;
 cmd.flags = MMC_CMD_AC;
 if (use_r1b_resp) {
  cmd.flags |= MMC_RSP_SPI_R1B | MMC_RSP_R1B;




  cmd.busy_timeout = timeout_ms;
 } else {
  cmd.flags |= MMC_RSP_SPI_R1 | MMC_RSP_R1;
 }

 if (index == EXT_CSD_SANITIZE_START)
  cmd.sanitize_busy = 1;

 err = mmc_wait_for_cmd(host, &cmd, MMC_CMD_RETRIES);
 if (err)
  goto out;


 if (!use_busy_signal)
  goto out;


 if (((host->caps & MMC_CAP_WAIT_WHILE_BUSY) && use_r1b_resp) ||
  mmc_host_is_spi(host))
  goto out_tim;


 err = mmc_poll_for_busy(card, timeout_ms, send_status, retry_crc_err);
 if (err)
  goto out;

out_tim:

 if (timing)
  mmc_set_timing(host, timing);

 if (send_status) {
  err = mmc_switch_status(card);
  if (err && timing)
   mmc_set_timing(host, old_timing);
 }
out:
 mmc_retune_release(host);

 return err;
}

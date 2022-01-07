
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_usb_sdmmc {int dummy; } ;
struct mmc_command {int opcode; } ;


 int MMC_SEND_TUNING_BLOCK ;
 int sd_change_phase (struct rtsx_usb_sdmmc*,int ,int ) ;
 int sd_clear_error (struct rtsx_usb_sdmmc*) ;
 int sd_read_data (struct rtsx_usb_sdmmc*,struct mmc_command*,int,int *,int ,int) ;
 int sd_wait_data_idle (struct rtsx_usb_sdmmc*) ;

__attribute__((used)) static int sd_tuning_rx_cmd(struct rtsx_usb_sdmmc *host,
  u8 opcode, u8 sample_point)
{
 int err;
 struct mmc_command cmd = {};

 err = sd_change_phase(host, sample_point, 0);
 if (err)
  return err;

 cmd.opcode = MMC_SEND_TUNING_BLOCK;
 err = sd_read_data(host, &cmd, 0x40, ((void*)0), 0, 100);
 if (err) {

  sd_wait_data_idle(host);
  sd_clear_error(host);
  return err;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {scalar_t__ use_spi_crc; } ;
struct mmc_command {int flags; scalar_t__ arg; int opcode; } ;


 int MMC_CMD_BC ;
 int MMC_CS_DONTCARE ;
 int MMC_CS_HIGH ;
 int MMC_GO_IDLE_STATE ;
 int MMC_RSP_NONE ;
 int MMC_RSP_SPI_R1 ;
 int mmc_delay (int) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 int mmc_set_chip_select (struct mmc_host*,int ) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_go_idle(struct mmc_host *host)
{
 int err;
 struct mmc_command cmd = {};
 if (!mmc_host_is_spi(host)) {
  mmc_set_chip_select(host, MMC_CS_HIGH);
  mmc_delay(1);
 }

 cmd.opcode = MMC_GO_IDLE_STATE;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_NONE | MMC_CMD_BC;

 err = mmc_wait_for_cmd(host, &cmd, 0);

 mmc_delay(1);

 if (!mmc_host_is_spi(host)) {
  mmc_set_chip_select(host, MMC_CS_DONTCARE);
  mmc_delay(1);
 }

 host->use_spi_crc = 0;

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int flags; unsigned char* resp; int opcode; int arg; } ;
struct mmc_card {int host; } ;
typedef int io_cmd ;


 int MMC_CMD_AC ;
 int MMC_RSP_R5 ;
 int SD_IO_RW_DIRECT ;
 int ath10k_sdio_set_cmd52_arg (int *,int ,int ,unsigned int,int ) ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int ) ;

__attribute__((used)) static int ath10k_sdio_func0_cmd52_rd_byte(struct mmc_card *card,
        unsigned int address,
        unsigned char *byte)
{
 struct mmc_command io_cmd;
 int ret;

 memset(&io_cmd, 0, sizeof(io_cmd));
 ath10k_sdio_set_cmd52_arg(&io_cmd.arg, 0, 0, address, 0);
 io_cmd.opcode = SD_IO_RW_DIRECT;
 io_cmd.flags = MMC_RSP_R5 | MMC_CMD_AC;

 ret = mmc_wait_for_cmd(card->host, &io_cmd, 0);
 if (!ret)
  *byte = io_cmd.resp[0];

 return ret;
}

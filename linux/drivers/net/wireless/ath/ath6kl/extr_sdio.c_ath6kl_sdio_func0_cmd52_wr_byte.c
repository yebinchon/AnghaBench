
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int flags; int opcode; int arg; } ;
struct mmc_card {int host; } ;
typedef int io_cmd ;


 int MMC_CMD_AC ;
 int MMC_RSP_R5 ;
 int SD_IO_RW_DIRECT ;
 int ath6kl_sdio_set_cmd52_arg (int *,int,int ,unsigned int,unsigned char) ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int ) ;

__attribute__((used)) static int ath6kl_sdio_func0_cmd52_wr_byte(struct mmc_card *card,
        unsigned int address,
        unsigned char byte)
{
 struct mmc_command io_cmd;

 memset(&io_cmd, 0, sizeof(io_cmd));
 ath6kl_sdio_set_cmd52_arg(&io_cmd.arg, 1, 0, address, byte);
 io_cmd.opcode = SD_IO_RW_DIRECT;
 io_cmd.flags = MMC_RSP_R5 | MMC_CMD_AC;

 return mmc_wait_for_cmd(card->host, &io_cmd, 0);
}

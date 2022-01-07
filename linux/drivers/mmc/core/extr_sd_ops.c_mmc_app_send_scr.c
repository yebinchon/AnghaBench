
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct mmc_request {struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_data {int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int flags; } ;
struct mmc_command {int flags; int error; scalar_t__ arg; int opcode; } ;
struct mmc_card {void** raw_scr; int host; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_CMD_ADTC ;
 int MMC_DATA_READ ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R1 ;
 int SD_APP_SEND_SCR ;
 void* be32_to_cpu (int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int mmc_app_cmd (int ,struct mmc_card*) ;
 int mmc_set_data_timeout (struct mmc_data*,struct mmc_card*) ;
 int mmc_wait_for_req (int ,struct mmc_request*) ;
 int sg_init_one (struct scatterlist*,int *,int) ;

int mmc_app_send_scr(struct mmc_card *card)
{
 int err;
 struct mmc_request mrq = {};
 struct mmc_command cmd = {};
 struct mmc_data data = {};
 struct scatterlist sg;
 __be32 *scr;



 err = mmc_app_cmd(card->host, card);
 if (err)
  return err;




 scr = kmalloc(sizeof(card->raw_scr), GFP_KERNEL);
 if (!scr)
  return -ENOMEM;

 mrq.cmd = &cmd;
 mrq.data = &data;

 cmd.opcode = SD_APP_SEND_SCR;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;

 data.blksz = 8;
 data.blocks = 1;
 data.flags = MMC_DATA_READ;
 data.sg = &sg;
 data.sg_len = 1;

 sg_init_one(&sg, scr, 8);

 mmc_set_data_timeout(&data, card);

 mmc_wait_for_req(card->host, &mrq);

 card->raw_scr[0] = be32_to_cpu(scr[0]);
 card->raw_scr[1] = be32_to_cpu(scr[1]);

 kfree(scr);

 if (cmd.error)
  return cmd.error;
 if (data.error)
  return data.error;

 return 0;
}

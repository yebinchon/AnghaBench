
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_card {int host; } ;


 int EILSEQ ;
 int mmc_send_status (struct mmc_card*,int *) ;
 int mmc_switch_status_error (int ,int ) ;

int __mmc_switch_status(struct mmc_card *card, bool crc_err_fatal)
{
 u32 status;
 int err;

 err = mmc_send_status(card, &status);
 if (!crc_err_fatal && err == -EILSEQ)
  return 0;
 if (err)
  return err;

 return mmc_switch_status_error(card->host, status);
}

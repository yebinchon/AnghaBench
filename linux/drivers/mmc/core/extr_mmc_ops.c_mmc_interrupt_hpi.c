
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int out_of_int_time; int hpi_en; } ;
struct mmc_card {TYPE_1__ ext_csd; int host; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int const R1_CURRENT_STATE (int ) ;





 unsigned long jiffies ;
 int mmc_hostname (int ) ;
 int mmc_send_hpi_cmd (struct mmc_card*,int *) ;
 int mmc_send_status (struct mmc_card*,int *) ;
 unsigned long msecs_to_jiffies (int ) ;
 int pr_debug (char*,int ,int const) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int mmc_interrupt_hpi(struct mmc_card *card)
{
 int err;
 u32 status;
 unsigned long prg_wait;

 if (!card->ext_csd.hpi_en) {
  pr_info("%s: HPI enable bit unset\n", mmc_hostname(card->host));
  return 1;
 }

 err = mmc_send_status(card, &status);
 if (err) {
  pr_err("%s: Get card status fail\n", mmc_hostname(card->host));
  goto out;
 }

 switch (R1_CURRENT_STATE(status)) {
 case 132:
 case 130:
 case 129:
 case 128:




  goto out;
 case 131:
  break;
 default:

  pr_debug("%s: HPI cannot be sent. Card state=%d\n",
   mmc_hostname(card->host), R1_CURRENT_STATE(status));
  err = -EINVAL;
  goto out;
 }

 err = mmc_send_hpi_cmd(card, &status);
 if (err)
  goto out;

 prg_wait = jiffies + msecs_to_jiffies(card->ext_csd.out_of_int_time);
 do {
  err = mmc_send_status(card, &status);

  if (!err && R1_CURRENT_STATE(status) == 128)
   break;
  if (time_after(jiffies, prg_wait))
   err = -ETIMEDOUT;
 } while (!err);

out:
 return err;
}

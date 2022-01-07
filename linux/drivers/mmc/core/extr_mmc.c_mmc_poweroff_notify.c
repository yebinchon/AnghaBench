
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int generic_cmd6_time; unsigned int power_off_longtime; int power_off_notification; } ;
struct mmc_card {TYPE_1__ ext_csd; int host; } ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_NO_POWER_NOTIFICATION ;
 unsigned int EXT_CSD_POWER_OFF_LONG ;
 int EXT_CSD_POWER_OFF_NOTIFICATION ;
 int __mmc_switch (struct mmc_card*,int ,int ,unsigned int,unsigned int,int ,int,int,int) ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,unsigned int) ;

__attribute__((used)) static int mmc_poweroff_notify(struct mmc_card *card, unsigned int notify_type)
{
 unsigned int timeout = card->ext_csd.generic_cmd6_time;
 int err;


 if (notify_type == EXT_CSD_POWER_OFF_LONG)
  timeout = card->ext_csd.power_off_longtime;

 err = __mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
   EXT_CSD_POWER_OFF_NOTIFICATION,
   notify_type, timeout, 0, 1, 0, 0);
 if (err)
  pr_err("%s: Power Off Notification timed out, %u\n",
         mmc_hostname(card->host), timeout);


 card->ext_csd.power_off_notification = EXT_CSD_NO_POWER_NOTIFICATION;

 return err;
}

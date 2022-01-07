
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_card {int dummy; } ;


 int MMC_CMD_RETRIES ;
 int __mmc_send_status (struct mmc_card*,int *,int ) ;

int mmc_send_status(struct mmc_card *card, u32 *status)
{
 return __mmc_send_status(card, status, MMC_CMD_RETRIES);
}

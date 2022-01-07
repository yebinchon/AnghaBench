
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mmc_card {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ R1_CURRENT_STATE (scalar_t__) ;
 scalar_t__ R1_STATE_PRG ;
 int R1_STATUS (scalar_t__) ;
 int __mmc_send_status (struct mmc_card*,scalar_t__*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ioctl_rpmb_card_status_poll(struct mmc_card *card, u32 *status,
           u32 retries_max)
{
 int err;
 u32 retry_count = 0;

 if (!status || !retries_max)
  return -EINVAL;

 do {
  err = __mmc_send_status(card, status, 5);
  if (err)
   break;

  if (!R1_STATUS(*status) &&
    (R1_CURRENT_STATE(*status) != R1_STATE_PRG))
   break;






  usleep_range(1000, 5000);
 } while (++retry_count < retries_max);

 if (retry_count == retries_max)
  err = -EPERM;

 return err;
}

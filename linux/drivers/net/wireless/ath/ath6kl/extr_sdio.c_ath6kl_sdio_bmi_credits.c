
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int cmd_credits; } ;
struct ath6kl {TYPE_1__ bmi; } ;


 int BMI_COMMUNICATION_TIMEOUT ;
 scalar_t__ COUNT_DEC_ADDRESS ;
 int ENDPOINT1 ;
 int ETIMEDOUT ;
 int HIF_RD_SYNC_BYTE_INC ;
 int HTC_MAILBOX_NUM_MAX ;
 int ath6kl_err (char*,...) ;
 int ath6kl_sdio_read_write_sync (struct ath6kl*,scalar_t__,int *,int,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ath6kl_sdio_bmi_credits(struct ath6kl *ar)
{
 u32 addr;
 unsigned long timeout;
 int ret;

 ar->bmi.cmd_credits = 0;


 addr = COUNT_DEC_ADDRESS + (HTC_MAILBOX_NUM_MAX + ENDPOINT1) * 4;

 timeout = jiffies + msecs_to_jiffies(BMI_COMMUNICATION_TIMEOUT);
 while (time_before(jiffies, timeout) && !ar->bmi.cmd_credits) {






  ret = ath6kl_sdio_read_write_sync(ar, addr,
      (u8 *)&ar->bmi.cmd_credits, 4,
      HIF_RD_SYNC_BYTE_INC);
  if (ret) {
   ath6kl_err("Unable to decrement the command credit count register: %d\n",
       ret);
   return ret;
  }




  ar->bmi.cmd_credits &= 0xFF;
 }

 if (!ar->bmi.cmd_credits) {
  ath6kl_err("bmi communication timeout\n");
  return -ETIMEDOUT;
 }

 return 0;
}

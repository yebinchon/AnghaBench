
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int done_sent; } ;
struct ath6kl {TYPE_1__ bmi; } ;
typedef int cid ;


 int ATH6KL_DBG_BMI ;
 int BMI_DONE ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_err (char*,int) ;
 int ath6kl_hif_bmi_write (struct ath6kl*,int *,int) ;

int ath6kl_bmi_done(struct ath6kl *ar)
{
 int ret;
 u32 cid = BMI_DONE;

 if (ar->bmi.done_sent) {
  ath6kl_dbg(ATH6KL_DBG_BMI, "bmi done skipped\n");
  return 0;
 }

 ar->bmi.done_sent = 1;

 ret = ath6kl_hif_bmi_write(ar, (u8 *)&cid, sizeof(cid));
 if (ret) {
  ath6kl_err("Unable to send bmi done: %d\n", ret);
  return ret;
 }

 return 0;
}

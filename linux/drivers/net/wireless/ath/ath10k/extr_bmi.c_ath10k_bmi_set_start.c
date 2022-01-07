
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {void* addr; } ;
struct bmi_cmd {TYPE_2__ set_app_start; void* id; } ;
struct TYPE_3__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_1__ bmi; } ;


 int BMI_SET_APP_START ;
 int EBUSY ;
 void* __cpu_to_le32 (int) ;
 int ath10k_hif_exchange_bmi_msg (struct ath10k*,struct bmi_cmd*,int,int *,int *) ;
 int ath10k_warn (struct ath10k*,char*,...) ;

int ath10k_bmi_set_start(struct ath10k *ar, u32 address)
{
 struct bmi_cmd cmd;
 u32 cmdlen = sizeof(cmd.id) + sizeof(cmd.set_app_start);
 int ret;

 if (ar->bmi.done_sent) {
  ath10k_warn(ar, "bmi set start command disallowed\n");
  return -EBUSY;
 }

 cmd.id = __cpu_to_le32(BMI_SET_APP_START);
 cmd.set_app_start.addr = __cpu_to_le32(address);

 ret = ath10k_hif_exchange_bmi_msg(ar, &cmd, cmdlen, ((void*)0), ((void*)0));
 if (ret) {
  ath10k_warn(ar, "unable to set start to the device:%d\n", ret);
  return ret;
 }

 return 0;
}

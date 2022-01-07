
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {void* value; void* addr; } ;
struct bmi_cmd {TYPE_1__ write_soc_reg; void* id; } ;
struct TYPE_4__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_2__ bmi; } ;


 int ATH10K_DBG_BMI ;
 int BMI_WRITE_SOC_REGISTER ;
 int EBUSY ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 int ath10k_hif_exchange_bmi_msg (struct ath10k*,struct bmi_cmd*,int,int *,int *) ;
 int ath10k_warn (struct ath10k*,char*,...) ;

int ath10k_bmi_write_soc_reg(struct ath10k *ar, u32 address, u32 reg_val)
{
 struct bmi_cmd cmd;
 u32 cmdlen = sizeof(cmd.id) + sizeof(cmd.write_soc_reg);
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_BMI,
     "bmi write soc register 0x%08x val 0x%08x\n",
     address, reg_val);

 if (ar->bmi.done_sent) {
  ath10k_warn(ar, "bmi write soc register command in progress\n");
  return -EBUSY;
 }

 cmd.id = __cpu_to_le32(BMI_WRITE_SOC_REGISTER);
 cmd.write_soc_reg.addr = __cpu_to_le32(address);
 cmd.write_soc_reg.value = __cpu_to_le32(reg_val);

 ret = ath10k_hif_exchange_bmi_msg(ar, &cmd, cmdlen, ((void*)0), ((void*)0));
 if (ret) {
  ath10k_warn(ar, "Unable to write soc register to device: %d\n",
       ret);
  return ret;
 }

 return 0;
}

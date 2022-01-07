
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct TYPE_2__ {int max_cmd_size; int * cmd_buf; scalar_t__ done_sent; } ;
struct ath6kl {TYPE_1__ bmi; } ;
typedef int cid ;
typedef int addr ;


 int ATH6KL_DBG_BMI ;
 size_t BMI_SET_APP_START ;
 int EACCES ;
 int EINVAL ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,size_t) ;
 int ath6kl_err (char*,int) ;
 int ath6kl_hif_bmi_write (struct ath6kl*,int *,size_t) ;
 int memcpy (int *,size_t*,int) ;
 int memset (int *,int ,int) ;

int ath6kl_bmi_set_app_start(struct ath6kl *ar, u32 addr)
{
 u32 cid = BMI_SET_APP_START;
 int ret;
 u32 offset;
 u16 size;

 if (ar->bmi.done_sent) {
  ath6kl_err("bmi done sent already, cmd %d disallowed\n", cid);
  return -EACCES;
 }

 size = sizeof(cid) + sizeof(addr);
 if (size > ar->bmi.max_cmd_size) {
  WARN_ON(1);
  return -EINVAL;
 }
 memset(ar->bmi.cmd_buf, 0, size);

 ath6kl_dbg(ATH6KL_DBG_BMI, "bmi set app start: addr: 0x%x\n", addr);

 offset = 0;
 memcpy(&(ar->bmi.cmd_buf[offset]), &cid, sizeof(cid));
 offset += sizeof(cid);
 memcpy(&(ar->bmi.cmd_buf[offset]), &addr, sizeof(addr));
 offset += sizeof(addr);

 ret = ath6kl_hif_bmi_write(ar, ar->bmi.cmd_buf, offset);
 if (ret) {
  ath6kl_err("Unable to write to the device: %d\n", ret);
  return ret;
 }

 return 0;
}

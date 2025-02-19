
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct TYPE_2__ {int max_cmd_size; size_t* cmd_buf; scalar_t__ done_sent; } ;
struct ath6kl {TYPE_1__ bmi; } ;
typedef int param ;
typedef int cid ;
typedef int addr ;


 int ATH6KL_DBG_BMI ;
 size_t BMI_EXECUTE ;
 int EACCES ;
 int EINVAL ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,size_t,size_t) ;
 int ath6kl_err (char*,int) ;
 int ath6kl_hif_bmi_read (struct ath6kl*,size_t*,int) ;
 int ath6kl_hif_bmi_write (struct ath6kl*,size_t*,size_t) ;
 int memcpy (size_t*,size_t*,int) ;
 int memset (size_t*,int ,int) ;

int ath6kl_bmi_execute(struct ath6kl *ar, u32 addr, u32 *param)
{
 u32 cid = BMI_EXECUTE;
 int ret;
 u32 offset;
 u16 size;

 if (ar->bmi.done_sent) {
  ath6kl_err("bmi done sent already, cmd %d disallowed\n", cid);
  return -EACCES;
 }

 size = sizeof(cid) + sizeof(addr) + sizeof(param);
 if (size > ar->bmi.max_cmd_size) {
  WARN_ON(1);
  return -EINVAL;
 }
 memset(ar->bmi.cmd_buf, 0, size);

 ath6kl_dbg(ATH6KL_DBG_BMI, "bmi execute: addr: 0x%x, param: %d)\n",
     addr, *param);

 offset = 0;
 memcpy(&(ar->bmi.cmd_buf[offset]), &cid, sizeof(cid));
 offset += sizeof(cid);
 memcpy(&(ar->bmi.cmd_buf[offset]), &addr, sizeof(addr));
 offset += sizeof(addr);
 memcpy(&(ar->bmi.cmd_buf[offset]), param, sizeof(*param));
 offset += sizeof(*param);

 ret = ath6kl_hif_bmi_write(ar, ar->bmi.cmd_buf, offset);
 if (ret) {
  ath6kl_err("Unable to write to the device: %d\n", ret);
  return ret;
 }

 ret = ath6kl_hif_bmi_read(ar, ar->bmi.cmd_buf, sizeof(*param));
 if (ret) {
  ath6kl_err("Unable to read from the device: %d\n", ret);
  return ret;
 }

 memcpy(param, ar->bmi.cmd_buf, sizeof(*param));

 return 0;
}

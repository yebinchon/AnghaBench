
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath6kl_bmi_target_info {int type; int version; int byte_count; } ;
struct TYPE_2__ {scalar_t__ done_sent; } ;
struct ath6kl {scalar_t__ hif_type; TYPE_1__ bmi; } ;
typedef int cid ;


 int ATH6KL_DBG_BMI ;
 scalar_t__ ATH6KL_HIF_TYPE_USB ;
 int BMI_GET_TARGET_INFO ;
 int EACCES ;
 int EINVAL ;
 int TARGET_VERSION_SENTINAL ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int ath6kl_err (char*,int,...) ;
 int ath6kl_hif_bmi_read (struct ath6kl*,int *,int) ;
 int ath6kl_hif_bmi_write (struct ath6kl*,int *,int) ;
 int le32_to_cpu (int ) ;

int ath6kl_bmi_get_target_info(struct ath6kl *ar,
          struct ath6kl_bmi_target_info *targ_info)
{
 int ret;
 u32 cid = BMI_GET_TARGET_INFO;

 if (ar->bmi.done_sent) {
  ath6kl_err("bmi done sent already, cmd %d disallowed\n", cid);
  return -EACCES;
 }

 ret = ath6kl_hif_bmi_write(ar, (u8 *)&cid, sizeof(cid));
 if (ret) {
  ath6kl_err("Unable to send get target info: %d\n", ret);
  return ret;
 }

 if (ar->hif_type == ATH6KL_HIF_TYPE_USB) {
  ret = ath6kl_hif_bmi_read(ar, (u8 *)targ_info,
       sizeof(*targ_info));
 } else {
  ret = ath6kl_hif_bmi_read(ar, (u8 *)&targ_info->version,
    sizeof(targ_info->version));
 }

 if (ret) {
  ath6kl_err("Unable to recv target info: %d\n", ret);
  return ret;
 }

 if (le32_to_cpu(targ_info->version) == TARGET_VERSION_SENTINAL) {

  ret = ath6kl_hif_bmi_read(ar,
       (u8 *)&targ_info->byte_count,
       sizeof(targ_info->byte_count));
  if (ret) {
   ath6kl_err("unable to read target info byte count: %d\n",
       ret);
   return ret;
  }





  if (le32_to_cpu(targ_info->byte_count) != sizeof(*targ_info)) {
   WARN_ON(1);
   return -EINVAL;
  }


  ret = ath6kl_hif_bmi_read(ar,
       ((u8 *)targ_info) +
       sizeof(targ_info->byte_count),
       sizeof(*targ_info) -
       sizeof(targ_info->byte_count));

  if (ret) {
   ath6kl_err("Unable to read target info (%d bytes): %d\n",
       targ_info->byte_count, ret);
   return ret;
  }
 }

 ath6kl_dbg(ATH6KL_DBG_BMI, "target info (ver: 0x%x type: 0x%x)\n",
     targ_info->version, targ_info->type);

 return 0;
}

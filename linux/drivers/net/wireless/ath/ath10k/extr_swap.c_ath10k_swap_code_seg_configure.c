
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_swap_code_seg_info {int seg_hw_info; int target_addr; } ;
struct ath10k_fw_file {struct ath10k_swap_code_seg_info* firmware_swap_code_seg_info; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_bmi_write_memory (struct ath10k*,int ,int *,int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_err (struct ath10k*,char*,int) ;

int ath10k_swap_code_seg_configure(struct ath10k *ar,
       const struct ath10k_fw_file *fw_file)
{
 int ret;
 struct ath10k_swap_code_seg_info *seg_info = ((void*)0);

 if (!fw_file->firmware_swap_code_seg_info)
  return 0;

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot found firmware code swap binary\n");

 seg_info = fw_file->firmware_swap_code_seg_info;

 ret = ath10k_bmi_write_memory(ar, seg_info->target_addr,
          &seg_info->seg_hw_info,
          sizeof(seg_info->seg_hw_info));
 if (ret) {
  ath10k_err(ar, "failed to write Code swap segment information (%d)\n",
      ret);
  return ret;
 }

 return 0;
}

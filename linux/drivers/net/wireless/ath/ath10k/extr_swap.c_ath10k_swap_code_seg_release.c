
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_fw_file {int * firmware_swap_code_seg_info; scalar_t__ codeswap_len; int * codeswap_data; } ;
struct ath10k {int dummy; } ;


 int ath10k_swap_code_seg_free (struct ath10k*,int *) ;

void ath10k_swap_code_seg_release(struct ath10k *ar,
      struct ath10k_fw_file *fw_file)
{
 ath10k_swap_code_seg_free(ar, fw_file->firmware_swap_code_seg_info);




 fw_file->codeswap_data = ((void*)0);
 fw_file->codeswap_len = 0;

 fw_file->firmware_swap_code_seg_info = ((void*)0);
}

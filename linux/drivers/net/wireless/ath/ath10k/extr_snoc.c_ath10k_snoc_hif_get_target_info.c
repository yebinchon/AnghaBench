
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmi_target_info {void* type; void* version; } ;
struct ath10k {int dummy; } ;


 void* ATH10K_HW_WCN3990 ;

__attribute__((used)) static int ath10k_snoc_hif_get_target_info(struct ath10k *ar,
        struct bmi_target_info *target_info)
{
 target_info->version = ATH10K_HW_WCN3990;
 target_info->type = ATH10K_HW_WCN3990;

 return 0;
}

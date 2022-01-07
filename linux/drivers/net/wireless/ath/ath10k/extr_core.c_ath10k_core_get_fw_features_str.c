
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;
struct ath10k {TYPE_2__ normal_mode_fw; } ;


 int ATH10K_FW_FEATURE_COUNT ;
 scalar_t__ ath10k_core_get_fw_feature_str (char*,size_t,int) ;
 scalar_t__ scnprintf (char*,size_t,char*) ;
 scalar_t__ test_bit (int,int ) ;

void ath10k_core_get_fw_features_str(struct ath10k *ar,
         char *buf,
         size_t buf_len)
{
 size_t len = 0;
 int i;

 for (i = 0; i < ATH10K_FW_FEATURE_COUNT; i++) {
  if (test_bit(i, ar->normal_mode_fw.fw_file.fw_features)) {
   if (len > 0)
    len += scnprintf(buf + len, buf_len - len, ",");

   len += ath10k_core_get_fw_feature_str(buf + len,
             buf_len - len,
             i);
  }
 }
}

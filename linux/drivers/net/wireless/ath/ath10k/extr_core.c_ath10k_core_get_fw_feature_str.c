
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath10k_fw_features { ____Placeholder_ath10k_fw_features } ath10k_fw_features ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ ATH10K_FW_FEATURE_COUNT ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ WARN_ON (int) ;
 int* ath10k_core_fw_feature_str ;
 unsigned int scnprintf (char*,size_t,char*,int) ;

__attribute__((used)) static unsigned int ath10k_core_get_fw_feature_str(char *buf,
         size_t buf_len,
         enum ath10k_fw_features feat)
{

 BUILD_BUG_ON(ARRAY_SIZE(ath10k_core_fw_feature_str) !=
       ATH10K_FW_FEATURE_COUNT);

 if (feat >= ARRAY_SIZE(ath10k_core_fw_feature_str) ||
     WARN_ON(!ath10k_core_fw_feature_str[feat])) {
  return scnprintf(buf, buf_len, "bit%d", feat);
 }

 return scnprintf(buf, buf_len, "%s", ath10k_core_fw_feature_str[feat]);
}

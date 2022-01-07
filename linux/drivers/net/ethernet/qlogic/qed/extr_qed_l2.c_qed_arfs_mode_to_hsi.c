
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qed_filter_config_mode { ____Placeholder_qed_filter_config_mode } qed_filter_config_mode ;
typedef enum gft_profile_type { ____Placeholder_gft_profile_type } gft_profile_type ;


 int GFT_PROFILE_TYPE_4_TUPLE ;
 int GFT_PROFILE_TYPE_IP_DST_ADDR ;
 int GFT_PROFILE_TYPE_IP_SRC_ADDR ;
 int GFT_PROFILE_TYPE_L4_DST_PORT ;
 int QED_FILTER_CONFIG_MODE_5_TUPLE ;
 int QED_FILTER_CONFIG_MODE_IP_DEST ;
 int QED_FILTER_CONFIG_MODE_IP_SRC ;

__attribute__((used)) static enum gft_profile_type
qed_arfs_mode_to_hsi(enum qed_filter_config_mode mode)
{
 if (mode == QED_FILTER_CONFIG_MODE_5_TUPLE)
  return GFT_PROFILE_TYPE_4_TUPLE;
 if (mode == QED_FILTER_CONFIG_MODE_IP_DEST)
  return GFT_PROFILE_TYPE_IP_DST_ADDR;
 if (mode == QED_FILTER_CONFIG_MODE_IP_SRC)
  return GFT_PROFILE_TYPE_IP_SRC_ADDR;
 return GFT_PROFILE_TYPE_L4_DST_PORT;
}

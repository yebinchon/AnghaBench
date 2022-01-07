
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct wmi {struct ath6kl* parent_dev; } ;
struct ath6kl {int fw_capabilities; } ;
typedef int s8 ;
typedef int s32 ;


 int ARRAY_SIZE (int **) ;
 int ATH6KL_FW_CAPABILITY_RATETABLE_MCS15 ;
 int RATE_AUTO ;
 int RATE_INDEX_MSB ;
 int RATE_INDEX_WITHOUT_SGI_MASK ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ test_bit (int ,int ) ;
 int ** wmi_rate_tbl ;
 int ** wmi_rate_tbl_mcs15 ;

s32 ath6kl_wmi_get_rate(struct wmi *wmi, s8 rate_index)
{
 struct ath6kl *ar = wmi->parent_dev;
 u8 sgi = 0;
 s32 ret;

 if (rate_index == RATE_AUTO)
  return 0;


 if (rate_index & RATE_INDEX_MSB) {
  rate_index &= RATE_INDEX_WITHOUT_SGI_MASK;
  sgi = 1;
 }

 if (test_bit(ATH6KL_FW_CAPABILITY_RATETABLE_MCS15,
       ar->fw_capabilities)) {
  if (WARN_ON(rate_index >= ARRAY_SIZE(wmi_rate_tbl_mcs15)))
   return 0;

  ret = wmi_rate_tbl_mcs15[(u32) rate_index][sgi];
 } else {
  if (WARN_ON(rate_index >= ARRAY_SIZE(wmi_rate_tbl)))
   return 0;

  ret = wmi_rate_tbl[(u32) rate_index][sgi];
 }

 return ret;
}

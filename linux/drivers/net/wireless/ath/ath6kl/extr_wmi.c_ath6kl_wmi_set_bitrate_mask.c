
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi {struct ath6kl* parent_dev; } ;
struct cfg80211_bitrate_mask {int dummy; } ;
struct ath6kl {int fw_capabilities; } ;


 int ATH6KL_FW_CAPABILITY_64BIT_RATES ;
 int ath6kl_set_bitrate_mask32 (struct wmi*,int ,struct cfg80211_bitrate_mask const*) ;
 int ath6kl_set_bitrate_mask64 (struct wmi*,int ,struct cfg80211_bitrate_mask const*) ;
 scalar_t__ test_bit (int ,int ) ;

int ath6kl_wmi_set_bitrate_mask(struct wmi *wmi, u8 if_idx,
    const struct cfg80211_bitrate_mask *mask)
{
 struct ath6kl *ar = wmi->parent_dev;

 if (test_bit(ATH6KL_FW_CAPABILITY_64BIT_RATES,
       ar->fw_capabilities))
  return ath6kl_set_bitrate_mask64(wmi, if_idx, mask);
 else
  return ath6kl_set_bitrate_mask32(wmi, if_idx, mask);
}

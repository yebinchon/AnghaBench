
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_p2p_noa_info {int num_descriptors; int ctwindow_oppps; } ;
struct ieee80211_p2p_noa_desc {int dummy; } ;


 int WMI_P2P_OPPPS_ENABLE_BIT ;

__attribute__((used)) static size_t ath10k_p2p_noa_ie_len_compute(const struct wmi_p2p_noa_info *noa)
{
 size_t len = 0;

 if (!noa->num_descriptors &&
     !(noa->ctwindow_oppps & WMI_P2P_OPPPS_ENABLE_BIT))
  return 0;

 len += 1 + 1 + 4;
 len += 1 + 2;
 len += 1 + 1;
 len += noa->num_descriptors * sizeof(struct ieee80211_p2p_noa_desc);

 return len;
}

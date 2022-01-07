
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wmi_p2p_noa_info {int ctwindow_oppps; int num_descriptors; TYPE_2__* descriptors; int index; } ;
struct ieee80211_p2p_noa_desc {int dummy; } ;
struct ieee80211_p2p_noa_attr {int oppps_ctwindow; TYPE_1__* desc; int index; } ;
typedef int __le16 ;
struct TYPE_4__ {int start_time; int interval; int duration; int type_count; } ;
struct TYPE_3__ {int start_time; int interval; int duration; int count; } ;


 int IEEE80211_P2P_ATTR_ABSENCE_NOTICE ;
 int IEEE80211_P2P_OPPPS_ENABLE_BIT ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WLAN_OUI_TYPE_WFA_P2P ;
 int WLAN_OUI_WFA ;
 int WMI_P2P_OPPPS_CTWINDOW_OFFSET ;
 int WMI_P2P_OPPPS_ENABLE_BIT ;
 int __cpu_to_le16 (int) ;
 int __le32_to_cpu (int ) ;

__attribute__((used)) static void ath10k_p2p_noa_ie_fill(u8 *data, size_t len,
       const struct wmi_p2p_noa_info *noa)
{
 struct ieee80211_p2p_noa_attr *noa_attr;
 u8 ctwindow_oppps = noa->ctwindow_oppps;
 u8 ctwindow = ctwindow_oppps >> WMI_P2P_OPPPS_CTWINDOW_OFFSET;
 bool oppps = !!(ctwindow_oppps & WMI_P2P_OPPPS_ENABLE_BIT);
 __le16 *noa_attr_len;
 u16 attr_len;
 u8 noa_descriptors = noa->num_descriptors;
 int i;


 data[0] = WLAN_EID_VENDOR_SPECIFIC;
 data[1] = len - 2;
 data[2] = (WLAN_OUI_WFA >> 16) & 0xff;
 data[3] = (WLAN_OUI_WFA >> 8) & 0xff;
 data[4] = (WLAN_OUI_WFA >> 0) & 0xff;
 data[5] = WLAN_OUI_TYPE_WFA_P2P;


 data[6] = IEEE80211_P2P_ATTR_ABSENCE_NOTICE;
 noa_attr_len = (__le16 *)&data[7];
 noa_attr = (struct ieee80211_p2p_noa_attr *)&data[9];

 noa_attr->index = noa->index;
 noa_attr->oppps_ctwindow = ctwindow;
 if (oppps)
  noa_attr->oppps_ctwindow |= IEEE80211_P2P_OPPPS_ENABLE_BIT;

 for (i = 0; i < noa_descriptors; i++) {
  noa_attr->desc[i].count =
   __le32_to_cpu(noa->descriptors[i].type_count);
  noa_attr->desc[i].duration = noa->descriptors[i].duration;
  noa_attr->desc[i].interval = noa->descriptors[i].interval;
  noa_attr->desc[i].start_time = noa->descriptors[i].start_time;
 }

 attr_len = 2;
 attr_len += noa_descriptors * sizeof(struct ieee80211_p2p_noa_desc);
 *noa_attr_len = __cpu_to_le16(attr_len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct iwl_mvm_he_obss_narrow_bw_ru_data {int tolerated; } ;
struct element {int datalen; int* data; } ;
struct cfg80211_bss {TYPE_1__* ies; } ;
struct TYPE_2__ {int len; int data; } ;


 int WLAN_EID_EXT_CAPABILITY ;
 int WLAN_EXT_CAPA10_OBSS_NARROW_BW_RU_TOLERANCE_SUPPORT ;
 struct element* cfg80211_find_elem (int ,int ,int ) ;

__attribute__((used)) static void iwl_mvm_check_he_obss_narrow_bw_ru_iter(struct wiphy *wiphy,
          struct cfg80211_bss *bss,
          void *_data)
{
 struct iwl_mvm_he_obss_narrow_bw_ru_data *data = _data;
 const struct element *elem;

 elem = cfg80211_find_elem(WLAN_EID_EXT_CAPABILITY, bss->ies->data,
      bss->ies->len);

 if (!elem || elem->datalen < 10 ||
     !(elem->data[10] &
       WLAN_EXT_CAPA10_OBSS_NARROW_BW_RU_TOLERANCE_SUPPORT)) {
  data->tolerated = 0;
 }
}

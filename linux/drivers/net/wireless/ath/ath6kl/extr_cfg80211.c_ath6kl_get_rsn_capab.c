
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct cfg80211_beacon_data {int tail_len; int tail; } ;


 int EINVAL ;
 int WLAN_EID_RSN ;
 size_t* cfg80211_find_ie (int ,int ,int ) ;
 int get_unaligned_le16 (size_t const*) ;
 int memcpy (size_t*,size_t const*,int) ;

__attribute__((used)) static int ath6kl_get_rsn_capab(struct cfg80211_beacon_data *beacon,
    u8 *rsn_capab)
{
 const u8 *rsn_ie;
 size_t rsn_ie_len;
 u16 cnt;

 if (!beacon->tail)
  return -EINVAL;

 rsn_ie = cfg80211_find_ie(WLAN_EID_RSN, beacon->tail, beacon->tail_len);
 if (!rsn_ie)
  return -EINVAL;

 rsn_ie_len = *(rsn_ie + 1);

 rsn_ie += 2;


 if (rsn_ie_len < 2)
  return -EINVAL;
 rsn_ie += 2;
 rsn_ie_len -= 2;


 if (rsn_ie_len < 4)
  return 0;
 rsn_ie += 4;
 rsn_ie_len -= 4;


 if (rsn_ie_len < 2)
  return 0;
 cnt = get_unaligned_le16(rsn_ie);
 rsn_ie += (2 + cnt * 4);
 rsn_ie_len -= (2 + cnt * 4);


 if (rsn_ie_len < 2)
  return 0;
 cnt = get_unaligned_le16(rsn_ie);
 rsn_ie += (2 + cnt * 4);
 rsn_ie_len -= (2 + cnt * 4);

 if (rsn_ie_len < 2)
  return 0;

 memcpy(rsn_capab, rsn_ie, 2);

 return 0;
}

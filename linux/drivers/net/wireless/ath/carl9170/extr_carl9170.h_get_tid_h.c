
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_hdr {int dummy; } ;


 int IEEE80211_QOS_CTL_TID_MASK ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;

__attribute__((used)) static inline u16 get_tid_h(struct ieee80211_hdr *hdr)
{
 return (ieee80211_get_qos_ctl(hdr))[0] & IEEE80211_QOS_CTL_TID_MASK;
}

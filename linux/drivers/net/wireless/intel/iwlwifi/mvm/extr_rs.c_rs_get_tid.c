
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int frame_control; } ;


 int IWL_MAX_TID_COUNT ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u8 rs_get_tid(struct ieee80211_hdr *hdr)
{
 u8 tid = IWL_MAX_TID_COUNT;

 if (ieee80211_is_data_qos(hdr->frame_control)) {
  u8 *qc = ieee80211_get_qos_ctl(hdr);
  tid = qc[0] & 0xf;
 }

 if (unlikely(tid > IWL_MAX_TID_COUNT))
  tid = IWL_MAX_TID_COUNT;

 return tid;
}

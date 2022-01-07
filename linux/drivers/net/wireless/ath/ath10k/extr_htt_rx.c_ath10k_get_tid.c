
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int frame_control; } ;


 int IEEE80211_QOS_CTL_TID_MASK ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_is_data_qos (int ) ;
 int snprintf (char*,size_t,char*,int,...) ;
 char** tid_to_ac ;

__attribute__((used)) static char *ath10k_get_tid(struct ieee80211_hdr *hdr, char *out, size_t size)
{
 u8 *qc;
 int tid;

 if (!ieee80211_is_data_qos(hdr->frame_control))
  return "";

 qc = ieee80211_get_qos_ctl(hdr);
 tid = *qc & IEEE80211_QOS_CTL_TID_MASK;
 if (tid < 8)
  snprintf(out, size, "tid %d (%s)", tid, tid_to_ac[tid]);
 else
  snprintf(out, size, "tid %d", tid);

 return out;
}

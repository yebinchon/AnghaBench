
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int last_rx_rate; int last_rx_updated; int * rx_count; int last_rx_signal; int last_rx_silence; } ;
struct ieee80211_hdr {int addr2; } ;
struct hostap_80211_rx_status {int rate; int signal; int noise; } ;
struct ap_data {int sta_table_lock; } ;


 int IW_QUAL_ALL_UPDATED ;
 int IW_QUAL_DBM ;
 struct sta_info* ap_get_sta (struct ap_data*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int hostap_update_rx_stats(struct ap_data *ap,
      struct ieee80211_hdr *hdr,
      struct hostap_80211_rx_status *rx_stats)
{
 struct sta_info *sta;

 if (!ap)
  return -1;

 spin_lock(&ap->sta_table_lock);
 sta = ap_get_sta(ap, hdr->addr2);
 if (sta) {
  sta->last_rx_silence = rx_stats->noise;
  sta->last_rx_signal = rx_stats->signal;
  sta->last_rx_rate = rx_stats->rate;
  sta->last_rx_updated = IW_QUAL_ALL_UPDATED | IW_QUAL_DBM;
  if (rx_stats->rate == 10)
   sta->rx_count[0]++;
  else if (rx_stats->rate == 20)
   sta->rx_count[1]++;
  else if (rx_stats->rate == 55)
   sta->rx_count[2]++;
  else if (rx_stats->rate == 110)
   sta->rx_count[3]++;
 }
 spin_unlock(&ap->sta_table_lock);

 return sta ? 0 : -1;
}

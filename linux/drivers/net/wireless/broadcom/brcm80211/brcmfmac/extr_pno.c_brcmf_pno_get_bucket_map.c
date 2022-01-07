
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cfg80211_sched_scan_request {int n_match_sets; struct cfg80211_match_set* match_sets; } ;
struct TYPE_2__ {int ssid; int ssid_len; } ;
struct cfg80211_match_set {int bssid; TYPE_1__ ssid; } ;
struct brcmf_pno_net_info_le {int bssid; int SSID_len; int SSID; } ;
struct brcmf_pno_info {int n_reqs; int req_lock; struct cfg80211_sched_scan_request** reqs; } ;


 int BIT (int) ;
 int ETH_ALEN ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int memcmp (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 brcmf_pno_get_bucket_map(struct brcmf_pno_info *pi,
        struct brcmf_pno_net_info_le *ni)
{
 struct cfg80211_sched_scan_request *req;
 struct cfg80211_match_set *ms;
 u32 bucket_map = 0;
 int i, j;

 mutex_lock(&pi->req_lock);
 for (i = 0; i < pi->n_reqs; i++) {
  req = pi->reqs[i];

  if (!req->n_match_sets)
   continue;
  for (j = 0; j < req->n_match_sets; j++) {
   ms = &req->match_sets[j];
   if (ms->ssid.ssid_len == ni->SSID_len &&
       !memcmp(ms->ssid.ssid, ni->SSID, ni->SSID_len)) {
    bucket_map |= BIT(i);
    break;
   }
   if (is_valid_ether_addr(ms->bssid) &&
       !memcmp(ms->bssid, ni->bssid, ETH_ALEN)) {
    bucket_map |= BIT(i);
    break;
   }
  }
 }
 mutex_unlock(&pi->req_lock);
 return bucket_map;
}

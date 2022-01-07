
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_ssid {scalar_t__ ssid_len; int ssid; } ;
struct cfg80211_sched_scan_request {int n_ssids; TYPE_1__* ssids; } ;
struct TYPE_2__ {scalar_t__ ssid_len; int ssid; } ;


 int strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool brcmf_is_ssid_active(struct cfg80211_ssid *ssid,
     struct cfg80211_sched_scan_request *req)
{
 int i;

 if (!ssid || !req->ssids || !req->n_ssids)
  return 0;

 for (i = 0; i < req->n_ssids; i++) {
  if (ssid->ssid_len == req->ssids[i].ssid_len) {
   if (!strncmp(ssid->ssid, req->ssids[i].ssid,
         ssid->ssid_len))
    return 1;
  }
 }
 return 0;
}

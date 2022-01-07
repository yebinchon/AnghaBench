
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_ssid {scalar_t__ ssid_len; int ssid; } ;
struct cfg80211_scan_request {int n_ssids; struct cfg80211_ssid* ssids; } ;


 int BRCMF_P2P_WILDCARD_SSID ;
 scalar_t__ BRCMF_P2P_WILDCARD_SSID_LEN ;
 int INFO ;
 int brcmf_dbg (int ,char*,int ) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool brcmf_p2p_scan_is_p2p_request(struct cfg80211_scan_request *request)
{
 struct cfg80211_ssid *ssids = request->ssids;
 int i;

 for (i = 0; i < request->n_ssids; i++) {
  if (ssids[i].ssid_len != BRCMF_P2P_WILDCARD_SSID_LEN)
   continue;

  brcmf_dbg(INFO, "comparing ssid \"%s\"", ssids[i].ssid);
  if (!memcmp(BRCMF_P2P_WILDCARD_SSID, ssids[i].ssid,
       BRCMF_P2P_WILDCARD_SSID_LEN))
   return 1;
 }
 return 0;
}

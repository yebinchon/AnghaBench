
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_sched_scan_request {scalar_t__ n_match_sets; int n_ssids; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_cfg80211_info {int scan_status; struct brcmf_pub* pub; } ;


 int BRCMF_SCAN_STATUS_SUPPRESS ;
 int EAGAIN ;
 int EINVAL ;
 int SCAN ;
 int bphy_err (struct brcmf_pub*,char*,int ) ;
 int brcmf_dbg (int ,char*,scalar_t__,...) ;
 int brcmf_pno_start_sched_scan (struct brcmf_if*,struct cfg80211_sched_scan_request*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static int
brcmf_cfg80211_sched_scan_start(struct wiphy *wiphy,
    struct net_device *ndev,
    struct cfg80211_sched_scan_request *req)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_pub *drvr = cfg->pub;

 brcmf_dbg(SCAN, "Enter: n_match_sets=%d n_ssids=%d\n",
    req->n_match_sets, req->n_ssids);

 if (test_bit(BRCMF_SCAN_STATUS_SUPPRESS, &cfg->scan_status)) {
  bphy_err(drvr, "Scanning suppressed: status=%lu\n",
    cfg->scan_status);
  return -EAGAIN;
 }

 if (req->n_match_sets <= 0) {
  brcmf_dbg(SCAN, "invalid number of matchsets specified: %d\n",
     req->n_match_sets);
  return -EINVAL;
 }

 return brcmf_pno_start_sched_scan(ifp, req);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ath6kl_vif {int fw_vif_idx; int flags; } ;
struct ath6kl {int tx_pwr; int event_wq; int wmi; } ;


 int CONNECTED ;
 int EINTR ;
 int EIO ;
 int HZ ;
 int ath6kl_cfg80211_ready (struct ath6kl_vif*) ;
 int ath6kl_err (char*) ;
 struct ath6kl_vif* ath6kl_vif_first (struct ath6kl*) ;
 scalar_t__ ath6kl_wmi_get_tx_pwr_cmd (int ,int ) ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int,int) ;
 scalar_t__ wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ath6kl_cfg80211_get_txpower(struct wiphy *wiphy,
           struct wireless_dev *wdev,
           int *dbm)
{
 struct ath6kl *ar = (struct ath6kl *)wiphy_priv(wiphy);
 struct ath6kl_vif *vif;

 vif = ath6kl_vif_first(ar);
 if (!vif)
  return -EIO;

 if (!ath6kl_cfg80211_ready(vif))
  return -EIO;

 if (test_bit(CONNECTED, &vif->flags)) {
  ar->tx_pwr = 255;

  if (ath6kl_wmi_get_tx_pwr_cmd(ar->wmi, vif->fw_vif_idx) != 0) {
   ath6kl_err("ath6kl_wmi_get_tx_pwr_cmd failed\n");
   return -EIO;
  }

  wait_event_interruptible_timeout(ar->event_wq, ar->tx_pwr != 255,
       5 * HZ);

  if (signal_pending(current)) {
   ath6kl_err("target did not respond\n");
   return -EINTR;
  }
 }

 *dbm = ar->tx_pwr;
 return 0;
}

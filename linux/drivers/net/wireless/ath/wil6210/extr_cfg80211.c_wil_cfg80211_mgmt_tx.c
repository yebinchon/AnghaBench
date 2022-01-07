
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ channel; } ;
struct wil6210_priv {int dummy; } ;
struct cfg80211_mgmt_tx_params {size_t len; int wait; TYPE_1__* chan; int offchan; int * buf; } ;
struct TYPE_2__ {int hw_value; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int cfg80211_mgmt_tx_status (struct wireless_dev*,int ,int const*,size_t,int,int ) ;
 struct wil6210_vif* wdev_to_vif (struct wil6210_priv*,struct wireless_dev*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,...) ;
 int wil_err (struct wil6210_priv*,char*,...) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;
 int wmi_mgmt_tx (struct wil6210_vif*,int const*,size_t) ;
 int wmi_mgmt_tx_ext (struct wil6210_vif*,int const*,size_t,scalar_t__,int ) ;

int wil_cfg80211_mgmt_tx(struct wiphy *wiphy, struct wireless_dev *wdev,
    struct cfg80211_mgmt_tx_params *params,
    u64 *cookie)
{
 const u8 *buf = params->buf;
 size_t len = params->len;
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = wdev_to_vif(wil, wdev);
 int rc;
 bool tx_status;

 wil_dbg_misc(wil, "mgmt_tx: channel %d offchan %d, wait %d\n",
       params->chan ? params->chan->hw_value : -1,
       params->offchan,
       params->wait);






 if (params->chan && params->chan->hw_value == 0) {
  wil_err(wil, "invalid channel\n");
  return -EINVAL;
 }

 if (wdev->iftype != NL80211_IFTYPE_AP) {
  wil_dbg_misc(wil,
        "send WMI_SW_TX_REQ_CMDID on non-AP interfaces\n");
  rc = wmi_mgmt_tx(vif, buf, len);
  goto out;
 }

 if (!params->chan || params->chan->hw_value == vif->channel) {
  wil_dbg_misc(wil,
        "send WMI_SW_TX_REQ_CMDID for on-channel\n");
  rc = wmi_mgmt_tx(vif, buf, len);
  goto out;
 }

 if (params->offchan == 0) {
  wil_err(wil,
   "invalid channel params: current %d requested %d, off-channel not allowed\n",
   vif->channel, params->chan->hw_value);
  return -EBUSY;
 }


 rc = wmi_mgmt_tx_ext(vif, buf, len, params->chan->hw_value,
        params->wait);

out:




 tx_status = (rc == 0);
 rc = (rc == -EAGAIN) ? 0 : rc;
 cfg80211_mgmt_tx_status(wdev, cookie ? *cookie : 0, buf, len,
    tx_status, GFP_KERNEL);

 return rc;
}

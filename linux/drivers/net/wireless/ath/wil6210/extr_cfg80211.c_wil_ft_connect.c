
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_ft_auth_cmd {int bssid; scalar_t__ channel; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int status; int connect_timer; int mid; int privacy; } ;
struct wil6210_priv {int fw_capabilities; } ;
struct net_device {int dummy; } ;
struct cfg80211_connect_params {int bssid; TYPE_1__* channel; scalar_t__ pbss; int privacy; int prev_bssid; } ;
typedef int auth_cmd ;
struct TYPE_2__ {scalar_t__ hw_value; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int WMI_FT_AUTH_CMDID ;
 int WMI_FW_CAPABILITY_FT_ROAMING ;
 int clear_bit (int ,int ) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ jiffies ;
 int memset (struct wmi_ft_auth_cmd*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int set_bit (int ,int ) ;
 int test_bit (int ,int ) ;
 int wil_err (struct wil6210_priv*,char*,...) ;
 int wil_info (struct wil6210_priv*,char*) ;
 int wil_vif_ft_roam ;
 int wil_vif_fwconnected ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_ft_auth_cmd*,int) ;

__attribute__((used)) static int wil_ft_connect(struct wiphy *wiphy,
     struct net_device *ndev,
     struct cfg80211_connect_params *sme)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = ndev_to_vif(ndev);
 struct wmi_ft_auth_cmd auth_cmd;
 int rc;

 if (!test_bit(WMI_FW_CAPABILITY_FT_ROAMING, wil->fw_capabilities)) {
  wil_err(wil, "FT: FW does not support FT roaming\n");
  return -EOPNOTSUPP;
 }

 if (!sme->prev_bssid) {
  wil_err(wil, "FT: prev_bssid was not set\n");
  return -EINVAL;
 }

 if (ether_addr_equal(sme->prev_bssid, sme->bssid)) {
  wil_err(wil, "FT: can not roam to same AP\n");
  return -EINVAL;
 }

 if (!test_bit(wil_vif_fwconnected, vif->status)) {
  wil_err(wil, "FT: roam while not connected\n");
  return -EINVAL;
 }

 if (vif->privacy != sme->privacy) {
  wil_err(wil, "FT: privacy mismatch, current (%d) roam (%d)\n",
   vif->privacy, sme->privacy);
  return -EINVAL;
 }

 if (sme->pbss) {
  wil_err(wil, "FT: roam is not valid for PBSS\n");
  return -EINVAL;
 }

 memset(&auth_cmd, 0, sizeof(auth_cmd));
 auth_cmd.channel = sme->channel->hw_value - 1;
 ether_addr_copy(auth_cmd.bssid, sme->bssid);

 wil_info(wil, "FT: roaming\n");

 set_bit(wil_vif_ft_roam, vif->status);
 rc = wmi_send(wil, WMI_FT_AUTH_CMDID, vif->mid,
        &auth_cmd, sizeof(auth_cmd));
 if (rc == 0)
  mod_timer(&vif->connect_timer,
     jiffies + msecs_to_jiffies(5000));
 else
  clear_bit(wil_vif_ft_roam, vif->status);

 return rc;
}

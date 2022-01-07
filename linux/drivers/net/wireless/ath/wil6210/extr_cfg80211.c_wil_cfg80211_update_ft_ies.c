
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_ft_reassoc_cmd {int bssid; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int mid; struct cfg80211_bss* bss; int status; } ;
struct wil6210_priv {int fw_capabilities; } ;
struct net_device {int dummy; } ;
struct cfg80211_update_ft_ies_params {int ie; int ie_len; } ;
struct cfg80211_bss {int bssid; } ;
typedef int reassoc ;


 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int WMI_FT_REASSOC_CMDID ;
 int WMI_FW_CAPABILITY_FT_ROAMING ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct wmi_ft_reassoc_cmd*,int ,int) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int test_bit (int ,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ) ;
 int wil_err (struct wil6210_priv*,char*,...) ;
 int wil_hex_dump_misc (char*,int ,int,int,int ,int ,int) ;
 int wil_vif_ft_roam ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_ft_reassoc_cmd*,int) ;
 int wmi_update_ft_ies (struct wil6210_vif*,int ,int ) ;

__attribute__((used)) static int
wil_cfg80211_update_ft_ies(struct wiphy *wiphy, struct net_device *dev,
      struct cfg80211_update_ft_ies_params *ftie)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = ndev_to_vif(dev);
 struct cfg80211_bss *bss;
 struct wmi_ft_reassoc_cmd reassoc;
 int rc = 0;

 wil_dbg_misc(wil, "update ft ies, mid=%d\n", vif->mid);
 wil_hex_dump_misc("FT IE ", DUMP_PREFIX_OFFSET, 16, 1,
     ftie->ie, ftie->ie_len, 1);

 if (!test_bit(WMI_FW_CAPABILITY_FT_ROAMING, wil->fw_capabilities)) {
  wil_err(wil, "FW does not support FT roaming\n");
  return -EOPNOTSUPP;
 }

 rc = wmi_update_ft_ies(vif, ftie->ie_len, ftie->ie);
 if (rc)
  return rc;

 if (!test_bit(wil_vif_ft_roam, vif->status))

  return 0;





 bss = vif->bss;
 if (!bss) {
  wil_err(wil, "FT: bss is NULL\n");
  return -EINVAL;
 }

 memset(&reassoc, 0, sizeof(reassoc));
 ether_addr_copy(reassoc.bssid, bss->bssid);

 rc = wmi_send(wil, WMI_FT_REASSOC_CMDID, vif->mid,
        &reassoc, sizeof(reassoc));
 if (rc)
  wil_err(wil, "FT: reassoc failed (%d)\n", rc);

 return rc;
}

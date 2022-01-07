
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct wireless_dev* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct wireless_dev*) ;
 scalar_t__ PTR_ERR (struct wireless_dev*) ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 struct wireless_dev* brcmf_ap_add_vif (struct wiphy*,char const*,struct vif_params*) ;
 int brcmf_cfg80211_update_proto_addr_mode (struct wireless_dev*) ;
 int brcmf_dbg (int ,char*,char const*,int) ;
 struct wireless_dev* brcmf_p2p_add_vif (struct wiphy*,char const*,unsigned char,int,struct vif_params*) ;
 int brcmf_vif_add_validate (struct brcmf_cfg80211_info*,int) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static struct wireless_dev *brcmf_cfg80211_add_iface(struct wiphy *wiphy,
           const char *name,
           unsigned char name_assign_type,
           enum nl80211_iftype type,
           struct vif_params *params)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_pub *drvr = cfg->pub;
 struct wireless_dev *wdev;
 int err;

 brcmf_dbg(TRACE, "enter: %s type %d\n", name, type);
 err = brcmf_vif_add_validate(wiphy_to_cfg(wiphy), type);
 if (err) {
  bphy_err(drvr, "iface validation failed: err=%d\n", err);
  return ERR_PTR(err);
 }
 switch (type) {
 case 138:
 case 130:
 case 136:
 case 128:
 case 134:
 case 135:
  return ERR_PTR(-EOPNOTSUPP);
 case 137:
  wdev = brcmf_ap_add_vif(wiphy, name, params);
  break;
 case 133:
 case 131:
 case 132:
  wdev = brcmf_p2p_add_vif(wiphy, name, name_assign_type, type, params);
  break;
 case 129:
 default:
  return ERR_PTR(-EINVAL);
 }

 if (IS_ERR(wdev))
  bphy_err(drvr, "add iface %s type %d failed: err=%d\n", name,
    type, (int)PTR_ERR(wdev));
 else
  brcmf_cfg80211_update_proto_addr_mode(wdev);

 return wdev;
}

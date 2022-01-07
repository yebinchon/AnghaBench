
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct ath6kl {scalar_t__ num_vif; scalar_t__ vif_max; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EINVAL ;
 int ENOMEM ;
 struct wireless_dev* ERR_PTR (int ) ;
 int ath6kl_err (char*) ;
 struct wireless_dev* ath6kl_interface_add (struct ath6kl*,char const*,unsigned char,int,int ,int ) ;
 int ath6kl_is_valid_iftype (struct ath6kl*,int,int *,int *) ;
 struct ath6kl* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static struct wireless_dev *ath6kl_cfg80211_add_iface(struct wiphy *wiphy,
            const char *name,
            unsigned char name_assign_type,
            enum nl80211_iftype type,
            struct vif_params *params)
{
 struct ath6kl *ar = wiphy_priv(wiphy);
 struct wireless_dev *wdev;
 u8 if_idx, nw_type;

 if (ar->num_vif == ar->vif_max) {
  ath6kl_err("Reached maximum number of supported vif\n");
  return ERR_PTR(-EINVAL);
 }

 if (!ath6kl_is_valid_iftype(ar, type, &if_idx, &nw_type)) {
  ath6kl_err("Not a supported interface type\n");
  return ERR_PTR(-EINVAL);
 }

 wdev = ath6kl_interface_add(ar, name, name_assign_type, type, if_idx, nw_type);
 if (!wdev)
  return ERR_PTR(-ENOMEM);

 ar->num_vif++;

 return wdev;
}

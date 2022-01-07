
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int wiphy; } ;
struct brcmf_cfg80211_info {int dummy; } ;


 struct brcmf_cfg80211_info* wiphy_to_cfg (int ) ;

__attribute__((used)) static inline struct brcmf_cfg80211_info *wdev_to_cfg(struct wireless_dev *wd)
{
 return wiphy_to_cfg(wd->wiphy);
}

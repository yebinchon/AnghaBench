
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ieee80211_ptr; } ;
struct brcmf_cfg80211_info {int dummy; } ;


 struct brcmf_cfg80211_info* wdev_to_cfg (int ) ;

__attribute__((used)) static inline struct brcmf_cfg80211_info *ndev_to_cfg(struct net_device *ndev)
{
 return wdev_to_cfg(ndev->ieee80211_ptr);
}

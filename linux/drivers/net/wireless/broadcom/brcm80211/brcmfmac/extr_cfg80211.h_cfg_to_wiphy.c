
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct brcmf_cfg80211_info {struct wiphy* wiphy; } ;



__attribute__((used)) static inline struct wiphy *cfg_to_wiphy(struct brcmf_cfg80211_info *cfg)
{
 return cfg->wiphy;
}

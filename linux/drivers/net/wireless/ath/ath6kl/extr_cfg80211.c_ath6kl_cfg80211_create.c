
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ath6kl {struct wiphy* wiphy; } ;


 int ath6kl_cfg80211_ops ;
 int ath6kl_err (char*) ;
 struct wiphy* wiphy_new (int *,int) ;
 struct ath6kl* wiphy_priv (struct wiphy*) ;

struct ath6kl *ath6kl_cfg80211_create(void)
{
 struct ath6kl *ar;
 struct wiphy *wiphy;


 wiphy = wiphy_new(&ath6kl_cfg80211_ops, sizeof(struct ath6kl));

 if (!wiphy) {
  ath6kl_err("couldn't allocate wiphy device\n");
  return ((void*)0);
 }

 ar = wiphy_priv(wiphy);
 ar->wiphy = wiphy;

 return ar;
}

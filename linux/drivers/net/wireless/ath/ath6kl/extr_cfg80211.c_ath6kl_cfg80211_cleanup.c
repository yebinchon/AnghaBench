
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int wiphy_registered; int wiphy; } ;


 int wiphy_unregister (int ) ;

void ath6kl_cfg80211_cleanup(struct ath6kl *ar)
{
 wiphy_unregister(ar->wiphy);

 ar->wiphy_registered = 0;
}

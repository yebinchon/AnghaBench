
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;


 scalar_t__ wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void *mwifiex_cfg80211_get_adapter(struct wiphy *wiphy)
{
 return (void *) (*(unsigned long *) wiphy_priv(wiphy));
}

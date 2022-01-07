
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct regulatory_request {int dummy; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct TYPE_2__ {int regulatory; } ;
struct ar9170 {TYPE_1__ common; } ;


 int ath_reg_notifier_apply (struct wiphy*,struct regulatory_request*,int *) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

__attribute__((used)) static void carl9170_reg_notifier(struct wiphy *wiphy,
      struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct ar9170 *ar = hw->priv;

 ath_reg_notifier_apply(wiphy, request, &ar->common.regulatory);
}

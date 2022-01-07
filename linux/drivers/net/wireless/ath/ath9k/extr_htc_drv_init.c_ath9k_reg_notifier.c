
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int ah; } ;


 int ath9k_hw_regulatory (int ) ;
 int ath_reg_notifier_apply (struct wiphy*,struct regulatory_request*,int ) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

__attribute__((used)) static void ath9k_reg_notifier(struct wiphy *wiphy,
          struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct ath9k_htc_priv *priv = hw->priv;

 ath_reg_notifier_apply(wiphy, request,
          ath9k_hw_regulatory(priv->ah));
}

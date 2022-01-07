
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {int dfs_region; } ;
struct mt76x02_dev {int dummy; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;


 int mt76x02_dfs_set_domain (struct mt76x02_dev*,int ) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

void mt76x02_regd_notifier(struct wiphy *wiphy,
      struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct mt76x02_dev *dev = hw->priv;

 mt76x02_dfs_set_domain(dev, request->dfs_region);
}

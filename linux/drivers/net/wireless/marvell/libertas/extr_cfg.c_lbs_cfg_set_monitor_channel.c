
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct lbs_private {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_2__ {int hw_value; } ;


 int ENOTSUPP ;
 scalar_t__ NL80211_CHAN_NO_HT ;
 scalar_t__ cfg80211_get_chandef_type (struct cfg80211_chan_def*) ;
 int lbs_set_channel (struct lbs_private*,int ) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_set_monitor_channel(struct wiphy *wiphy,
           struct cfg80211_chan_def *chandef)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 int ret = -ENOTSUPP;

 if (cfg80211_get_chandef_type(chandef) != NL80211_CHAN_NO_HT)
  goto out;

 ret = lbs_set_channel(priv, chandef->chan->hw_value);

 out:
 return ret;
}

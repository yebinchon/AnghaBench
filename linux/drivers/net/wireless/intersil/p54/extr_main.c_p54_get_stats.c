
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int stats; } ;
struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int memcpy (struct ieee80211_low_level_stats*,int *,int) ;

__attribute__((used)) static int p54_get_stats(struct ieee80211_hw *dev,
    struct ieee80211_low_level_stats *stats)
{
 struct p54_common *priv = dev->priv;

 memcpy(stats, &priv->stats, sizeof(*stats));
 return 0;
}

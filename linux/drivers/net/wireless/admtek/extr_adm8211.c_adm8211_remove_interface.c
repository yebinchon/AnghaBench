
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int mode; } ;


 int NL80211_IFTYPE_MONITOR ;

__attribute__((used)) static void adm8211_remove_interface(struct ieee80211_hw *dev,
         struct ieee80211_vif *vif)
{
 struct adm8211_priv *priv = dev->priv;
 priv->mode = NL80211_IFTYPE_MONITOR;
}

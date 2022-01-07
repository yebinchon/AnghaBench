
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {scalar_t__ mode; int conf_mutex; int mac_addr; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; int addr; int driver_flags; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int IEEE80211_VIF_BEACON_FILTER ;



 scalar_t__ NL80211_IFTYPE_MONITOR ;

 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_setup_mac (struct p54_common*) ;

__attribute__((used)) static int p54_add_interface(struct ieee80211_hw *dev,
        struct ieee80211_vif *vif)
{
 struct p54_common *priv = dev->priv;
 int err;

 vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER;

 mutex_lock(&priv->conf_mutex);
 if (priv->mode != NL80211_IFTYPE_MONITOR) {
  mutex_unlock(&priv->conf_mutex);
  return -EOPNOTSUPP;
 }

 priv->vif = vif;

 switch (vif->type) {
 case 128:
 case 131:
 case 130:
 case 129:
  priv->mode = vif->type;
  break;
 default:
  mutex_unlock(&priv->conf_mutex);
  return -EOPNOTSUPP;
 }

 memcpy(priv->mac_addr, vif->addr, ETH_ALEN);
 err = p54_setup_mac(priv);
 mutex_unlock(&priv->conf_mutex);
 return err;
}

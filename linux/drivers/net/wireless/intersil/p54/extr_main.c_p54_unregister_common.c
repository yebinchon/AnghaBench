
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int registered; int eeprom_mutex; int conf_mutex; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int mutex_destroy (int *) ;
 int p54_unregister_leds (struct p54_common*) ;

void p54_unregister_common(struct ieee80211_hw *dev)
{
 struct p54_common *priv = dev->priv;

 if (priv->registered) {
  priv->registered = 0;



  ieee80211_unregister_hw(dev);
 }

 mutex_destroy(&priv->conf_mutex);
 mutex_destroy(&priv->eeprom_mutex);
}

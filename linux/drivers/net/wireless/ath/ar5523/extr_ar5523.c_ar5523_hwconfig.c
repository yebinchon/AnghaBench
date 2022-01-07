
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int mutex; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int ar5523_dbg (struct ar5523*,char*) ;
 int ar5523_flush_tx (struct ar5523*) ;
 int ar5523_switch_chan (struct ar5523*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ar5523_hwconfig(struct ieee80211_hw *hw, u32 changed)
{
 struct ar5523 *ar = hw->priv;

 ar5523_dbg(ar, "config called\n");
 mutex_lock(&ar->mutex);
 if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
  ar5523_dbg(ar, "Do channel switch\n");
  ar5523_flush_tx(ar);
  ar5523_switch_chan(ar);
 }
 mutex_unlock(&ar->mutex);
 return 0;
}

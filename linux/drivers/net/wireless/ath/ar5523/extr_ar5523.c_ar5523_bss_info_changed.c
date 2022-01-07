
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ieee80211_bss_conf {scalar_t__ assoc; } ;
struct ar5523 {int mutex; int flags; int stat_work; } ;


 int AR5523_CONNECTED ;
 int BSS_CHANGED_ASSOC ;
 int HZ ;
 int UATH_LED_LINK ;
 int UATH_LED_OFF ;
 int UATH_LED_ON ;
 int ar5523_create_connection (struct ar5523*,struct ieee80211_vif*,struct ieee80211_bss_conf*) ;
 int ar5523_dbg (struct ar5523*,char*) ;
 int ar5523_err (struct ar5523*,char*) ;
 int ar5523_set_basic_rates (struct ar5523*,struct ieee80211_bss_conf*) ;
 int ar5523_set_ledsteady (struct ar5523*,int ,int ) ;
 int ar5523_write_associd (struct ar5523*,struct ieee80211_bss_conf*) ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ar5523_bss_info_changed(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *bss,
        u32 changed)
{
 struct ar5523 *ar = hw->priv;
 int error;

 ar5523_dbg(ar, "bss_info_changed called\n");
 mutex_lock(&ar->mutex);

 if (!(changed & BSS_CHANGED_ASSOC))
  goto out_unlock;

 if (bss->assoc) {
  error = ar5523_create_connection(ar, vif, bss);
  if (error) {
   ar5523_err(ar, "could not create connection\n");
   goto out_unlock;
  }

  error = ar5523_set_basic_rates(ar, bss);
  if (error) {
   ar5523_err(ar, "could not set negotiated rate set\n");
   goto out_unlock;
  }

  error = ar5523_write_associd(ar, bss);
  if (error) {
   ar5523_err(ar, "could not set association\n");
   goto out_unlock;
  }


  ar5523_set_ledsteady(ar, UATH_LED_LINK, UATH_LED_ON);
  set_bit(AR5523_CONNECTED, &ar->flags);
  ieee80211_queue_delayed_work(hw, &ar->stat_work, HZ);

 } else {
  cancel_delayed_work(&ar->stat_work);
  clear_bit(AR5523_CONNECTED, &ar->flags);
  ar5523_set_ledsteady(ar, UATH_LED_LINK, UATH_LED_OFF);
 }

out_unlock:
 mutex_unlock(&ar->mutex);

}

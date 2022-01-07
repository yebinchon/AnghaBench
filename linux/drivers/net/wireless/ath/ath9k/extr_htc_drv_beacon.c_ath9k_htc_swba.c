
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_event_swba {scalar_t__ beacon_pending; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {scalar_t__ bmisscnt; int ** bslot; } ;
struct ath9k_htc_priv {int beacon_lock; TYPE_1__ beacon; int fatal_work; int hw; int ah; } ;


 int BSTUCK ;
 scalar_t__ BSTUCK_THRESHOLD ;
 int ath9k_htc_choose_bslot (struct ath9k_htc_priv*,struct wmi_event_swba*) ;
 int ath9k_htc_send_beacon (struct ath9k_htc_priv*,int) ;
 int ath9k_htc_send_buffered (struct ath9k_htc_priv*,int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ieee80211_queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath9k_htc_swba(struct ath9k_htc_priv *priv,
      struct wmi_event_swba *swba)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 int slot;

 if (swba->beacon_pending != 0) {
  priv->beacon.bmisscnt++;
  if (priv->beacon.bmisscnt > BSTUCK_THRESHOLD) {
   ath_dbg(common, BSTUCK, "Beacon stuck, HW reset\n");
   ieee80211_queue_work(priv->hw,
          &priv->fatal_work);
  }
  return;
 }

 if (priv->beacon.bmisscnt) {
  ath_dbg(common, BSTUCK,
   "Resuming beacon xmit after %u misses\n",
   priv->beacon.bmisscnt);
  priv->beacon.bmisscnt = 0;
 }

 slot = ath9k_htc_choose_bslot(priv, swba);
 spin_lock_bh(&priv->beacon_lock);
 if (priv->beacon.bslot[slot] == ((void*)0)) {
  spin_unlock_bh(&priv->beacon_lock);
  return;
 }
 spin_unlock_bh(&priv->beacon_lock);

 ath9k_htc_send_buffered(priv, slot);
 ath9k_htc_send_beacon(priv, slot);
}

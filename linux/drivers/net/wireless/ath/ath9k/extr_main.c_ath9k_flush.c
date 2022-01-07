
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int mutex; int sc_ah; } ;
struct ath_common {int op_flags; } ;


 int ATH_OP_MULTI_CHANNEL ;
 int __ath9k_flush (struct ieee80211_hw*,int ,int,int,int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 scalar_t__ ath9k_is_chanctx_enabled () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_flush(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
   u32 queues, bool drop)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);

 if (ath9k_is_chanctx_enabled()) {
  if (!test_bit(ATH_OP_MULTI_CHANNEL, &common->op_flags))
   goto flush;
  __ath9k_flush(hw, queues, drop, 1, 1);
  return;
 }
flush:
 mutex_lock(&sc->mutex);
 __ath9k_flush(hw, queues, drop, 1, 0);
 mutex_unlock(&sc->mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {TYPE_2__* chanctx; } ;
struct ath_softc {int mutex; TYPE_1__* cur_chan; } ;
struct TYPE_4__ {int cur_txpower; } ;
struct TYPE_3__ {int cur_txpower; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_get_txpower(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
        int *dbm)
{
 struct ath_softc *sc = hw->priv;
 struct ath_vif *avp = (void *)vif->drv_priv;

 mutex_lock(&sc->mutex);
 if (avp->chanctx)
  *dbm = avp->chanctx->cur_txpower;
 else
  *dbm = sc->cur_chan->cur_txpower;
 mutex_unlock(&sc->mutex);

 *dbm /= 2;

 return 0;
}

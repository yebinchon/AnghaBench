
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int sc_ah; } ;
struct ath_common {int op_flags; } ;


 int ATH_OP_SCANNING ;
 struct ath_common* ath9k_hw_common (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ath9k_sw_scan_start(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    const u8 *mac_addr)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 set_bit(ATH_OP_SCANNING, &common->op_flags);
}

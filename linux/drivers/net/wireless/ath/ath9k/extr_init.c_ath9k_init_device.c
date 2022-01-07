
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_2__ {int default_trigger; } ;
struct ath_softc {struct ieee80211_hw* hw; TYPE_1__ led_cdev; struct ath_hw* sc_ah; } ;
struct ath_regulatory {int alpha2; } ;
struct ath_hw {int dummy; } ;
struct ath_common {struct ath_regulatory regulatory; } ;
struct ath_bus_ops {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ATH_RXBUF ;
 int ATH_TXBUF ;
 int IEEE80211_TPT_LEDTRIG_FL_RADIO ;
 int ath9k_deinit_debug (struct ath_softc*) ;
 int ath9k_deinit_softc (struct ath_softc*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_init_debug (struct ath_hw*) ;
 int ath9k_init_softc (int ,struct ath_softc*,struct ath_bus_ops const*) ;
 int ath9k_init_txpower_limits (struct ath_softc*) ;
 int ath9k_reg_notifier ;
 int ath9k_set_hw_capab (struct ath_softc*,struct ieee80211_hw*) ;
 int ath9k_tpt_blink ;
 int ath_err (struct ath_common*,char*) ;
 int ath_init_leds (struct ath_softc*) ;
 int ath_is_world_regd (struct ath_regulatory*) ;
 int ath_regd_init (struct ath_regulatory*,int ,int ) ;
 int ath_rx_cleanup (struct ath_softc*) ;
 int ath_rx_init (struct ath_softc*,int ) ;
 int ath_start_rfkill_poll (struct ath_softc*) ;
 int ath_tx_init (struct ath_softc*,int ) ;
 int ieee80211_create_tpt_led_trigger (struct ieee80211_hw*,int ,int ,int ) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int regulatory_hint (int ,int ) ;

int ath9k_init_device(u16 devid, struct ath_softc *sc,
      const struct ath_bus_ops *bus_ops)
{
 struct ieee80211_hw *hw = sc->hw;
 struct ath_common *common;
 struct ath_hw *ah;
 int error = 0;
 struct ath_regulatory *reg;


 error = ath9k_init_softc(devid, sc, bus_ops);
 if (error)
  return error;

 ah = sc->sc_ah;
 common = ath9k_hw_common(ah);
 ath9k_set_hw_capab(sc, hw);


 error = ath_regd_init(&common->regulatory, sc->hw->wiphy,
         ath9k_reg_notifier);
 if (error)
  goto deinit;

 reg = &common->regulatory;


 error = ath_tx_init(sc, ATH_TXBUF);
 if (error != 0)
  goto deinit;


 error = ath_rx_init(sc, ATH_RXBUF);
 if (error != 0)
  goto deinit;

 ath9k_init_txpower_limits(sc);
 error = ieee80211_register_hw(hw);
 if (error)
  goto rx_cleanup;

 error = ath9k_init_debug(ah);
 if (error) {
  ath_err(common, "Unable to create debugfs files\n");
  goto unregister;
 }


 if (!ath_is_world_regd(reg)) {
  error = regulatory_hint(hw->wiphy, reg->alpha2);
  if (error)
   goto debug_cleanup;
 }

 ath_init_leds(sc);
 ath_start_rfkill_poll(sc);

 return 0;

debug_cleanup:
 ath9k_deinit_debug(sc);
unregister:
 ieee80211_unregister_hw(hw);
rx_cleanup:
 ath_rx_cleanup(sc);
deinit:
 ath9k_deinit_softc(sc);
 return error;
}

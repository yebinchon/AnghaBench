
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int low_rssi_thresh; int fast_div_bias; } ;
struct ath_softc {int driver_data; TYPE_2__ ant_comb; struct ath_hw* sc_ah; } ;
struct TYPE_6__ {int xlna_gpio; int xatten_margin_cfg; int alt_mingainidx; int ant_ctrl_comm2g_switch_enable; int pcie_waen; int pll_pwrsave; int led_active_high; } ;
struct ath9k_hw_capabilities {int hw_caps; } ;
struct ath_hw {TYPE_3__ config; struct ath9k_hw_capabilities caps; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_4__ {scalar_t__ ath_bus_type; } ;


 int ATH9K_HW_CAP_ANT_DIV_COMB ;
 int ATH9K_HW_CAP_BT_ANT_DIV ;
 int ATH9K_PCI_AR9565_1ANT ;
 int ATH9K_PCI_AR9565_2ANT ;
 int ATH9K_PCI_BT_ANT_DIV ;
 int ATH9K_PCI_CUS198 ;
 int ATH9K_PCI_CUS217 ;
 int ATH9K_PCI_CUS230 ;
 int ATH9K_PCI_CUS252 ;
 int ATH9K_PCI_D3_L1_WAR ;
 int ATH9K_PCI_KILLER ;
 int ATH9K_PCI_LED_ACT_HI ;
 int ATH9K_PCI_NO_PLL_PWRSAVE ;
 scalar_t__ ATH_PCI ;
 int CONFIG_ATH9K_PCOEM ;
 int IS_ENABLED (int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_info (struct ath_common*,char*,...) ;

__attribute__((used)) static void ath9k_init_pcoem_platform(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath9k_hw_capabilities *pCap = &ah->caps;
 struct ath_common *common = ath9k_hw_common(ah);

 if (!IS_ENABLED(CONFIG_ATH9K_PCOEM))
  return;

 if (common->bus_ops->ath_bus_type != ATH_PCI)
  return;

 if (sc->driver_data & (ATH9K_PCI_CUS198 |
          ATH9K_PCI_CUS230)) {
  ah->config.xlna_gpio = 9;
  ah->config.xatten_margin_cfg = 1;
  ah->config.alt_mingainidx = 1;
  ah->config.ant_ctrl_comm2g_switch_enable = 0x000BBB88;
  sc->ant_comb.low_rssi_thresh = 20;
  sc->ant_comb.fast_div_bias = 3;

  ath_info(common, "Set parameters for %s\n",
    (sc->driver_data & ATH9K_PCI_CUS198) ?
    "CUS198" : "CUS230");
 }

 if (sc->driver_data & ATH9K_PCI_CUS217)
  ath_info(common, "CUS217 card detected\n");

 if (sc->driver_data & ATH9K_PCI_CUS252)
  ath_info(common, "CUS252 card detected\n");

 if (sc->driver_data & ATH9K_PCI_AR9565_1ANT)
  ath_info(common, "WB335 1-ANT card detected\n");

 if (sc->driver_data & ATH9K_PCI_AR9565_2ANT)
  ath_info(common, "WB335 2-ANT card detected\n");

 if (sc->driver_data & ATH9K_PCI_KILLER)
  ath_info(common, "Killer Wireless card detected\n");







 if (sc->driver_data & (ATH9K_PCI_AR9565_1ANT | ATH9K_PCI_AR9565_2ANT)) {
  if (!(sc->driver_data & ATH9K_PCI_BT_ANT_DIV))
   pCap->hw_caps &= ~ATH9K_HW_CAP_ANT_DIV_COMB;
 }

 if (sc->driver_data & ATH9K_PCI_BT_ANT_DIV) {
  pCap->hw_caps |= ATH9K_HW_CAP_BT_ANT_DIV;
  ath_info(common, "Set BT/WLAN RX diversity capability\n");
 }

 if (sc->driver_data & ATH9K_PCI_D3_L1_WAR) {
  ah->config.pcie_waen = 0x0040473b;
  ath_info(common, "Enable WAR for ASPM D3/L1\n");
 }






 ah->config.pll_pwrsave = 1;

 if (sc->driver_data & ATH9K_PCI_NO_PLL_PWRSAVE) {
  ah->config.pll_pwrsave = 0;
  ath_info(common, "Disable PLL PowerSave\n");
 }

 if (sc->driver_data & ATH9K_PCI_LED_ACT_HI)
  ah->config.led_active_high = 1;
}

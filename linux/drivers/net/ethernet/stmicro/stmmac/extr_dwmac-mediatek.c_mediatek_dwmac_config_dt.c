
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mac_delay_struct {void* rx_inv; void* tx_inv; scalar_t__ rx_delay; scalar_t__ tx_delay; } ;
struct mediatek_dwmac_plat_data {scalar_t__ phy_mode; int np; void* rmii_rxc; int dev; TYPE_1__* variant; int peri_regmap; struct mac_delay_struct mac_delay; } ;
struct TYPE_2__ {scalar_t__ tx_delay_max; scalar_t__ rx_delay_max; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,...) ;
 scalar_t__ of_get_phy_mode (int ) ;
 void* of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,scalar_t__*) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int mediatek_dwmac_config_dt(struct mediatek_dwmac_plat_data *plat)
{
 struct mac_delay_struct *mac_delay = &plat->mac_delay;
 u32 tx_delay_ps, rx_delay_ps;

 plat->peri_regmap = syscon_regmap_lookup_by_phandle(plat->np, "mediatek,pericfg");
 if (IS_ERR(plat->peri_regmap)) {
  dev_err(plat->dev, "Failed to get pericfg syscon\n");
  return PTR_ERR(plat->peri_regmap);
 }

 plat->phy_mode = of_get_phy_mode(plat->np);
 if (plat->phy_mode < 0) {
  dev_err(plat->dev, "not find phy-mode\n");
  return -EINVAL;
 }

 if (!of_property_read_u32(plat->np, "mediatek,tx-delay-ps", &tx_delay_ps)) {
  if (tx_delay_ps < plat->variant->tx_delay_max) {
   mac_delay->tx_delay = tx_delay_ps;
  } else {
   dev_err(plat->dev, "Invalid TX clock delay: %dps\n", tx_delay_ps);
   return -EINVAL;
  }
 }

 if (!of_property_read_u32(plat->np, "mediatek,rx-delay-ps", &rx_delay_ps)) {
  if (rx_delay_ps < plat->variant->rx_delay_max) {
   mac_delay->rx_delay = rx_delay_ps;
  } else {
   dev_err(plat->dev, "Invalid RX clock delay: %dps\n", rx_delay_ps);
   return -EINVAL;
  }
 }

 mac_delay->tx_inv = of_property_read_bool(plat->np, "mediatek,txc-inverse");
 mac_delay->rx_inv = of_property_read_bool(plat->np, "mediatek,rxc-inverse");
 plat->rmii_rxc = of_property_read_bool(plat->np, "mediatek,rmii-rxc");

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_delay_struct {int tx_delay; int tx_inv; int rx_delay; int rx_inv; } ;
struct mediatek_dwmac_plat_data {int phy_mode; int peri_regmap; int dev; int rmii_rxc; struct mac_delay_struct mac_delay; } ;


 int EINVAL ;
 int ETH_DLY_GTXC_ENABLE ;
 int ETH_DLY_GTXC_INV ;
 int ETH_DLY_GTXC_STAGES ;
 int ETH_DLY_RXC_ENABLE ;
 int ETH_DLY_RXC_INV ;
 int ETH_DLY_RXC_STAGES ;
 int ETH_DLY_TXC_ENABLE ;
 int ETH_DLY_TXC_INV ;
 int ETH_DLY_TXC_STAGES ;
 int ETH_FINE_DLY_GTXC ;
 int ETH_FINE_DLY_RXC ;
 int ETH_RMII_DLY_TX_INV ;
 int FIELD_PREP (int ,int) ;
 int PERI_ETH_DLY ;
 int PERI_ETH_DLY_FINE ;






 int dev_err (int ,char*) ;
 int mt2712_delay_ps2stage (struct mediatek_dwmac_plat_data*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int mt2712_set_delay(struct mediatek_dwmac_plat_data *plat)
{
 struct mac_delay_struct *mac_delay = &plat->mac_delay;
 u32 delay_val = 0, fine_val = 0;

 mt2712_delay_ps2stage(plat);

 switch (plat->phy_mode) {
 case 133:
  delay_val |= FIELD_PREP(ETH_DLY_TXC_ENABLE, !!mac_delay->tx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_TXC_STAGES, mac_delay->tx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_TXC_INV, mac_delay->tx_inv);

  delay_val |= FIELD_PREP(ETH_DLY_RXC_ENABLE, !!mac_delay->rx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_RXC_STAGES, mac_delay->rx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_RXC_INV, mac_delay->rx_inv);
  break;
 case 128:






  if (plat->rmii_rxc) {




   delay_val |= FIELD_PREP(ETH_DLY_RXC_ENABLE, !!mac_delay->rx_delay);
   delay_val |= FIELD_PREP(ETH_DLY_RXC_STAGES, mac_delay->rx_delay);
   delay_val |= FIELD_PREP(ETH_DLY_RXC_INV, mac_delay->rx_inv);
  } else {




   delay_val |= FIELD_PREP(ETH_DLY_TXC_ENABLE, !!mac_delay->rx_delay);
   delay_val |= FIELD_PREP(ETH_DLY_TXC_STAGES, mac_delay->rx_delay);
   delay_val |= FIELD_PREP(ETH_DLY_TXC_INV, mac_delay->rx_inv);
  }




  if (mac_delay->tx_inv)
   fine_val = ETH_RMII_DLY_TX_INV;
  break;
 case 132:
 case 129:
 case 130:
 case 131:
  fine_val = ETH_FINE_DLY_GTXC | ETH_FINE_DLY_RXC;

  delay_val |= FIELD_PREP(ETH_DLY_GTXC_ENABLE, !!mac_delay->tx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_GTXC_STAGES, mac_delay->tx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_GTXC_INV, mac_delay->tx_inv);

  delay_val |= FIELD_PREP(ETH_DLY_RXC_ENABLE, !!mac_delay->rx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_RXC_STAGES, mac_delay->rx_delay);
  delay_val |= FIELD_PREP(ETH_DLY_RXC_INV, mac_delay->rx_inv);
  break;
 default:
  dev_err(plat->dev, "phy interface not supported\n");
  return -EINVAL;
 }
 regmap_write(plat->peri_regmap, PERI_ETH_DLY, delay_val);
 regmap_write(plat->peri_regmap, PERI_ETH_DLY_FINE, fine_val);

 return 0;
}

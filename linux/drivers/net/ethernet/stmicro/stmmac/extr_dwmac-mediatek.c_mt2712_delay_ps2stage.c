
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_delay_struct {int tx_delay; int rx_delay; } ;
struct mediatek_dwmac_plat_data {int phy_mode; int dev; struct mac_delay_struct mac_delay; } ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void mt2712_delay_ps2stage(struct mediatek_dwmac_plat_data *plat)
{
 struct mac_delay_struct *mac_delay = &plat->mac_delay;

 switch (plat->phy_mode) {
 case 133:
 case 128:

  mac_delay->tx_delay /= 550;
  mac_delay->rx_delay /= 550;
  break;
 case 132:
 case 129:
 case 130:
 case 131:

  mac_delay->tx_delay /= 170;
  mac_delay->rx_delay /= 170;
  break;
 default:
  dev_err(plat->dev, "phy interface not supported\n");
  break;
 }
}

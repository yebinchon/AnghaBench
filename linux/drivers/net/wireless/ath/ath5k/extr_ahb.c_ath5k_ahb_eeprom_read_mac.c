
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {scalar_t__ id; int dev; } ;
struct ath5k_hw {int dev; } ;
struct ar231x_board_config {TYPE_1__* config; } ;
struct TYPE_2__ {int * wlan1_mac; int * wlan0_mac; } ;


 int ETH_ALEN ;
 struct ar231x_board_config* dev_get_platdata (int *) ;
 int memcpy (int *,int *,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int ath5k_ahb_eeprom_read_mac(struct ath5k_hw *ah, u8 *mac)
{
 struct platform_device *pdev = to_platform_device(ah->dev);
 struct ar231x_board_config *bcfg = dev_get_platdata(&pdev->dev);
 u8 *cfg_mac;

 if (to_platform_device(ah->dev)->id == 0)
  cfg_mac = bcfg->config->wlan0_mac;
 else
  cfg_mac = bcfg->config->wlan1_mac;

 memcpy(mac, cfg_mac, ETH_ALEN);
 return 0;
}

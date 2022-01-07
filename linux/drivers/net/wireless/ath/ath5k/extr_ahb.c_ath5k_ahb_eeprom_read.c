
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct platform_device {int dev; } ;
struct ath_common {struct ath5k_hw* priv; } ;
struct ath5k_hw {int dev; } ;
struct ar231x_board_config {scalar_t__ config; scalar_t__ radio; } ;


 int BOARD_CONFIG_BUFSZ ;
 struct ar231x_board_config* dev_get_platdata (int *) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static bool
ath5k_ahb_eeprom_read(struct ath_common *common, u32 off, u16 *data)
{
 struct ath5k_hw *ah = common->priv;
 struct platform_device *pdev = to_platform_device(ah->dev);
 struct ar231x_board_config *bcfg = dev_get_platdata(&pdev->dev);
 u16 *eeprom, *eeprom_end;

 eeprom = (u16 *) bcfg->radio;
 eeprom_end = ((void *) bcfg->config) + BOARD_CONFIG_BUFSZ;

 eeprom += off;
 if (eeprom > eeprom_end)
  return 0;

 *data = *eeprom;
 return 1;
}

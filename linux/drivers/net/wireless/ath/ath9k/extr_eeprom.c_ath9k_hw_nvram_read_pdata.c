
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath9k_platform_data {int eeprom_data; } ;
typedef int off_t ;


 int ARRAY_SIZE (int ) ;
 int ath9k_hw_nvram_read_array (int ,int ,int ,int *) ;

__attribute__((used)) static bool ath9k_hw_nvram_read_pdata(struct ath9k_platform_data *pdata,
          off_t offset, u16 *data)
{
 return ath9k_hw_nvram_read_array(pdata->eeprom_data,
      ARRAY_SIZE(pdata->eeprom_data),
      offset, data);
}

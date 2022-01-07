
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct firmware {int size; scalar_t__ data; } ;
typedef int off_t ;


 int ath9k_hw_nvram_read_array (int *,int,int ,int *) ;

__attribute__((used)) static bool ath9k_hw_nvram_read_firmware(const struct firmware *eeprom_blob,
      off_t offset, u16 *data)
{
 return ath9k_hw_nvram_read_array((u16 *) eeprom_blob->data,
      eeprom_blob->size / sizeof(u16),
      offset, data);
}

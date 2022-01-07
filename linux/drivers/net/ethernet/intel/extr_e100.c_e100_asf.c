
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nic {int* eeprom; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int eeprom_asf ;
 size_t eeprom_config_asf ;
 int eeprom_gcl ;
 size_t eeprom_smbus_addr ;

__attribute__((used)) static int e100_asf(struct nic *nic)
{

 return (nic->pdev->device >= 0x1050) && (nic->pdev->device <= 0x1057) &&
    (nic->eeprom[eeprom_config_asf] & eeprom_asf) &&
    !(nic->eeprom[eeprom_config_asf] & eeprom_gcl) &&
    ((nic->eeprom[eeprom_smbus_addr] & 0xFF) != 0xFE);
}

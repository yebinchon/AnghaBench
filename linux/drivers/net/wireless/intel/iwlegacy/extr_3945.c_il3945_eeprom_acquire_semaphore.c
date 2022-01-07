
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_EEPROM_GP ;
 int CSR_EEPROM_GP_IF_OWNER_MSK ;
 int _il_clear_bit (struct il_priv*,int ,int ) ;

__attribute__((used)) static int
il3945_eeprom_acquire_semaphore(struct il_priv *il)
{
 _il_clear_bit(il, CSR_EEPROM_GP, CSR_EEPROM_GP_IF_OWNER_MSK);
 return 0;
}

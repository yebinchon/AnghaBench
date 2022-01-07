
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM ;
 int il_clear_bit (struct il_priv*,int ,int ) ;

void
il4965_eeprom_release_semaphore(struct il_priv *il)
{
 il_clear_bit(il, CSR_HW_IF_CONFIG_REG,
       CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static void iwl_eeprom_release_semaphore(struct iwl_trans *trans)
{
 iwl_clear_bit(trans, CSR_HW_IF_CONFIG_REG,
        CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM);
}

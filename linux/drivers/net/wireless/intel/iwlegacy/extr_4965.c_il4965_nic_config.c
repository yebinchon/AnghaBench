
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct il_priv {int lock; struct il_eeprom_calib_info* calib_info; } ;
struct il_eeprom_calib_info {int dummy; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_MAC_SI ;
 int CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI ;
 int EEPROM_4965_CALIB_TXPOWER_OFFSET ;
 int EEPROM_4965_RF_CFG_TYPE_MAX ;
 int EEPROM_RADIO_CONFIG ;
 int EEPROM_RF_CFG_DASH_MSK (int ) ;
 int EEPROM_RF_CFG_STEP_MSK (int ) ;
 int EEPROM_RF_CFG_TYPE_MSK (int ) ;
 int il_eeprom_query16 (struct il_priv*,int ) ;
 scalar_t__ il_eeprom_query_addr (struct il_priv*,int ) ;
 int il_set_bit (struct il_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il4965_nic_config(struct il_priv *il)
{
 unsigned long flags;
 u16 radio_cfg;

 spin_lock_irqsave(&il->lock, flags);

 radio_cfg = il_eeprom_query16(il, EEPROM_RADIO_CONFIG);


 if (EEPROM_RF_CFG_TYPE_MSK(radio_cfg) == EEPROM_4965_RF_CFG_TYPE_MAX)
  il_set_bit(il, CSR_HW_IF_CONFIG_REG,
      EEPROM_RF_CFG_TYPE_MSK(radio_cfg) |
      EEPROM_RF_CFG_STEP_MSK(radio_cfg) |
      EEPROM_RF_CFG_DASH_MSK(radio_cfg));


 il_set_bit(il, CSR_HW_IF_CONFIG_REG,
     CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI |
     CSR_HW_IF_CONFIG_REG_BIT_MAC_SI);

 il->calib_info =
     (struct il_eeprom_calib_info *)
     il_eeprom_query_addr(il, EEPROM_4965_CALIB_TXPOWER_OFFSET);

 spin_unlock_irqrestore(&il->lock, flags);
}

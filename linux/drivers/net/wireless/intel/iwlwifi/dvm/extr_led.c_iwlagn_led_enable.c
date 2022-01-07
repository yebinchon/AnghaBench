
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int trans; } ;


 int CSR_LED_REG ;
 int CSR_LED_REG_TURN_ON ;
 int iwl_write32 (int ,int ,int ) ;

void iwlagn_led_enable(struct iwl_priv *priv)
{
 iwl_write32(priv->trans, CSR_LED_REG, CSR_LED_REG_TURN_ON);
}

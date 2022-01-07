
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int trans; } ;


 int APMG_DIGITAL_SVR_REG ;
 int APMG_SVR_DIGITAL_VOLTAGE_1_32 ;
 int APMG_SVR_VOLTAGE_CONFIG_BIT_MSK ;
 int iwl_set_bits_mask_prph (int ,int ,int ,int ) ;

__attribute__((used)) static void iwl1000_nic_config(struct iwl_priv *priv)
{


 iwl_set_bits_mask_prph(priv->trans, APMG_DIGITAL_SVR_REG,
    APMG_SVR_DIGITAL_VOLTAGE_1_32,
    ~APMG_SVR_VOLTAGE_CONFIG_BIT_MSK);
}

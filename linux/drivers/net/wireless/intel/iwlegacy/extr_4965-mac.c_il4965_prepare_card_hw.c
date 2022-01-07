
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int hw_ready; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_NIC_PREPARE_DONE ;
 int CSR_HW_IF_CONFIG_REG_PREPARE ;
 int ETIMEDOUT ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int il4965_set_hw_ready (struct il_priv*) ;
 int il_set_bit (struct il_priv*,int ,int ) ;

__attribute__((used)) static void
il4965_prepare_card_hw(struct il_priv *il)
{
 int ret;

 il->hw_ready = 0;

 il4965_set_hw_ready(il);
 if (il->hw_ready)
  return;


 il_set_bit(il, CSR_HW_IF_CONFIG_REG, CSR_HW_IF_CONFIG_REG_PREPARE);

 ret =
     _il_poll_bit(il, CSR_HW_IF_CONFIG_REG,
    ~CSR_HW_IF_CONFIG_REG_BIT_NIC_PREPARE_DONE,
    CSR_HW_IF_CONFIG_REG_BIT_NIC_PREPARE_DONE, 150000);


 if (ret != -ETIMEDOUT)
  il4965_set_hw_ready(il);
}

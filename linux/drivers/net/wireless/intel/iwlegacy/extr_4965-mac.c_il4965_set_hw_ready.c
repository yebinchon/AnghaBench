
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int hw_ready; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_NIC_READY ;
 int D_INFO (char*,char*) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int il_set_bit (struct il_priv*,int ,int ) ;

__attribute__((used)) static void
il4965_set_hw_ready(struct il_priv *il)
{
 int ret;

 il_set_bit(il, CSR_HW_IF_CONFIG_REG,
     CSR_HW_IF_CONFIG_REG_BIT_NIC_READY);


 ret = _il_poll_bit(il, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
      CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
      100);
 if (ret >= 0)
  il->hw_ready = 1;

 D_INFO("hardware %s ready\n", (il->hw_ready) ? "" : "not");
}

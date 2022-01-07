
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addr_val_pair {int const member_1; scalar_t__ const member_0; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {int slow_intr_mask; TYPE_1__ params; } ;


 int ARRAY_SIZE (struct addr_val_pair const*) ;

 int A_CPL_INTR_ENABLE ;



 int A_PCIE_INT_ENABLE ;
 int A_PCIX_INT_ENABLE ;
 int A_PL_INT_ENABLE0 ;



 int A_T3DBG_INT_ENABLE ;
 int A_TP_INT_ENABLE ;

 int A_ULPTX_INT_ENABLE ;

 int CPLSW_INTR_MASK ;
 int F_CIM_OVFL_ERROR ;
 int F_PBL_BOUND_ERR_CH0 ;
 int F_PBL_BOUND_ERR_CH1 ;






 int PCIE_INTR_MASK ;
 int PCIX_INTR_MASK ;
 int PL_INTR_MASK ;



 scalar_t__ T3_REV_C ;

 int ULPTX_INTR_MASK ;
 int calc_gpio_intr (struct adapter*) ;
 scalar_t__ is_pcie (struct adapter*) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 int t3_write_regs (struct adapter*,struct addr_val_pair const*,int ,int ) ;

void t3_intr_enable(struct adapter *adapter)
{
 static const struct addr_val_pair intr_en_avp[] = {
  {140, 129},
  {144, 135},
  {144 - 134 + 133,
   135},
  {144 - 134 + 136,
   135},
  {145, 137},
  {139, 128},
  {141, 130},
  {142, 131},
  {146, 138},
  {143, 132},
 };

 adapter->slow_intr_mask = PL_INTR_MASK;

 t3_write_regs(adapter, intr_en_avp, ARRAY_SIZE(intr_en_avp), 0);
 t3_write_reg(adapter, A_TP_INT_ENABLE,
       adapter->params.rev >= T3_REV_C ? 0x2bfffff : 0x3bfffff);

 if (adapter->params.rev > 0) {
  t3_write_reg(adapter, A_CPL_INTR_ENABLE,
        CPLSW_INTR_MASK | F_CIM_OVFL_ERROR);
  t3_write_reg(adapter, A_ULPTX_INT_ENABLE,
        ULPTX_INTR_MASK | F_PBL_BOUND_ERR_CH0 |
        F_PBL_BOUND_ERR_CH1);
 } else {
  t3_write_reg(adapter, A_CPL_INTR_ENABLE, CPLSW_INTR_MASK);
  t3_write_reg(adapter, A_ULPTX_INT_ENABLE, ULPTX_INTR_MASK);
 }

 t3_write_reg(adapter, A_T3DBG_INT_ENABLE, calc_gpio_intr(adapter));

 if (is_pcie(adapter))
  t3_write_reg(adapter, A_PCIE_INT_ENABLE, PCIE_INTR_MASK);
 else
  t3_write_reg(adapter, A_PCIX_INT_ENABLE, PCIX_INTR_MASK);
 t3_write_reg(adapter, A_PL_INT_ENABLE0, adapter->slow_intr_mask);
 t3_read_reg(adapter, A_PL_INT_ENABLE0);
}

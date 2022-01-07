
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_QTX_ENA (int) ;
 int I40E_QTX_ENA_QENA_REQ_MASK ;
 int I40E_QTX_ENA_QENA_REQ_SHIFT ;
 int I40E_QTX_ENA_QENA_STAT_MASK ;
 int I40E_QTX_ENA_QENA_STAT_SHIFT ;
 int I40E_QTX_ENA_WAIT_COUNT ;
 int I40E_QTX_HEAD (int) ;
 int i40e_pre_tx_queue_cfg (struct i40e_hw*,int,int) ;
 int rd32 (struct i40e_hw*,int ) ;
 int usleep_range (int,int) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void i40e_control_tx_q(struct i40e_pf *pf, int pf_q, bool enable)
{
 struct i40e_hw *hw = &pf->hw;
 u32 tx_reg;
 int i;


 i40e_pre_tx_queue_cfg(&pf->hw, pf_q, enable);
 if (!enable)
  usleep_range(10, 20);

 for (i = 0; i < I40E_QTX_ENA_WAIT_COUNT; i++) {
  tx_reg = rd32(hw, I40E_QTX_ENA(pf_q));
  if (((tx_reg >> I40E_QTX_ENA_QENA_REQ_SHIFT) & 1) ==
      ((tx_reg >> I40E_QTX_ENA_QENA_STAT_SHIFT) & 1))
   break;
  usleep_range(1000, 2000);
 }


 if (enable == !!(tx_reg & I40E_QTX_ENA_QENA_STAT_MASK))
  return;


 if (enable) {
  wr32(hw, I40E_QTX_HEAD(pf_q), 0);
  tx_reg |= I40E_QTX_ENA_QENA_REQ_MASK;
 } else {
  tx_reg &= ~I40E_QTX_ENA_QENA_REQ_MASK;
 }

 wr32(hw, I40E_QTX_ENA(pf_q), tx_reg);
}

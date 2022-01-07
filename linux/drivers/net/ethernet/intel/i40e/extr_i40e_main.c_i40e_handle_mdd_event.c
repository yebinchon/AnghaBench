
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_vf {int vf_states; int num_mdd_events; } ;
struct TYPE_3__ {int base_queue; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; int state; TYPE_2__* pdev; struct i40e_vf* vf; struct i40e_hw hw; } ;
struct TYPE_4__ {int dev; } ;


 int I40E_GL_MDET_RX ;
 int I40E_GL_MDET_RX_EVENT_MASK ;
 int I40E_GL_MDET_RX_EVENT_SHIFT ;
 int I40E_GL_MDET_RX_FUNCTION_MASK ;
 int I40E_GL_MDET_RX_FUNCTION_SHIFT ;
 int I40E_GL_MDET_RX_QUEUE_MASK ;
 int I40E_GL_MDET_RX_QUEUE_SHIFT ;
 int I40E_GL_MDET_RX_VALID_MASK ;
 int I40E_GL_MDET_TX ;
 int I40E_GL_MDET_TX_EVENT_MASK ;
 int I40E_GL_MDET_TX_EVENT_SHIFT ;
 int I40E_GL_MDET_TX_PF_NUM_MASK ;
 int I40E_GL_MDET_TX_PF_NUM_SHIFT ;
 int I40E_GL_MDET_TX_QUEUE_MASK ;
 int I40E_GL_MDET_TX_QUEUE_SHIFT ;
 int I40E_GL_MDET_TX_VALID_MASK ;
 int I40E_GL_MDET_TX_VF_NUM_MASK ;
 int I40E_GL_MDET_TX_VF_NUM_SHIFT ;
 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ;
 int I40E_PF_MDET_RX ;
 int I40E_PF_MDET_RX_VALID_MASK ;
 int I40E_PF_MDET_TX ;
 int I40E_PF_MDET_TX_VALID_MASK ;
 int I40E_VF_STATE_DISABLED ;
 int I40E_VP_MDET_RX (int) ;
 int I40E_VP_MDET_RX_VALID_MASK ;
 int I40E_VP_MDET_TX (int) ;
 int I40E_VP_MDET_TX_VALID_MASK ;
 int __I40E_MDD_EVENT_PENDING ;
 int clear_bit (int ,int ) ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int i40e_flush (struct i40e_hw*) ;
 scalar_t__ netif_msg_rx_err (struct i40e_pf*) ;
 scalar_t__ netif_msg_tx_err (struct i40e_pf*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void i40e_handle_mdd_event(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 bool mdd_detected = 0;
 struct i40e_vf *vf;
 u32 reg;
 int i;

 if (!test_bit(__I40E_MDD_EVENT_PENDING, pf->state))
  return;


 reg = rd32(hw, I40E_GL_MDET_TX);
 if (reg & I40E_GL_MDET_TX_VALID_MASK) {
  u8 pf_num = (reg & I40E_GL_MDET_TX_PF_NUM_MASK) >>
    I40E_GL_MDET_TX_PF_NUM_SHIFT;
  u16 vf_num = (reg & I40E_GL_MDET_TX_VF_NUM_MASK) >>
    I40E_GL_MDET_TX_VF_NUM_SHIFT;
  u8 event = (reg & I40E_GL_MDET_TX_EVENT_MASK) >>
    I40E_GL_MDET_TX_EVENT_SHIFT;
  u16 queue = ((reg & I40E_GL_MDET_TX_QUEUE_MASK) >>
    I40E_GL_MDET_TX_QUEUE_SHIFT) -
    pf->hw.func_caps.base_queue;
  if (netif_msg_tx_err(pf))
   dev_info(&pf->pdev->dev, "Malicious Driver Detection event 0x%02x on TX queue %d PF number 0x%02x VF number 0x%02x\n",
     event, queue, pf_num, vf_num);
  wr32(hw, I40E_GL_MDET_TX, 0xffffffff);
  mdd_detected = 1;
 }
 reg = rd32(hw, I40E_GL_MDET_RX);
 if (reg & I40E_GL_MDET_RX_VALID_MASK) {
  u8 func = (reg & I40E_GL_MDET_RX_FUNCTION_MASK) >>
    I40E_GL_MDET_RX_FUNCTION_SHIFT;
  u8 event = (reg & I40E_GL_MDET_RX_EVENT_MASK) >>
    I40E_GL_MDET_RX_EVENT_SHIFT;
  u16 queue = ((reg & I40E_GL_MDET_RX_QUEUE_MASK) >>
    I40E_GL_MDET_RX_QUEUE_SHIFT) -
    pf->hw.func_caps.base_queue;
  if (netif_msg_rx_err(pf))
   dev_info(&pf->pdev->dev, "Malicious Driver Detection event 0x%02x on RX queue %d of function 0x%02x\n",
     event, queue, func);
  wr32(hw, I40E_GL_MDET_RX, 0xffffffff);
  mdd_detected = 1;
 }

 if (mdd_detected) {
  reg = rd32(hw, I40E_PF_MDET_TX);
  if (reg & I40E_PF_MDET_TX_VALID_MASK) {
   wr32(hw, I40E_PF_MDET_TX, 0xFFFF);
   dev_dbg(&pf->pdev->dev, "TX driver issue detected on PF\n");
  }
  reg = rd32(hw, I40E_PF_MDET_RX);
  if (reg & I40E_PF_MDET_RX_VALID_MASK) {
   wr32(hw, I40E_PF_MDET_RX, 0xFFFF);
   dev_dbg(&pf->pdev->dev, "RX driver issue detected on PF\n");
  }
 }


 for (i = 0; i < pf->num_alloc_vfs && mdd_detected; i++) {
  vf = &(pf->vf[i]);
  reg = rd32(hw, I40E_VP_MDET_TX(i));
  if (reg & I40E_VP_MDET_TX_VALID_MASK) {
   wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
   vf->num_mdd_events++;
   dev_info(&pf->pdev->dev, "TX driver issue detected on VF %d\n",
     i);
   dev_info(&pf->pdev->dev,
     "Use PF Control I/F to re-enable the VF\n");
   set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
  }

  reg = rd32(hw, I40E_VP_MDET_RX(i));
  if (reg & I40E_VP_MDET_RX_VALID_MASK) {
   wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
   vf->num_mdd_events++;
   dev_info(&pf->pdev->dev, "RX driver issue detected on VF %d\n",
     i);
   dev_info(&pf->pdev->dev,
     "Use PF Control I/F to re-enable the VF\n");
   set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
  }
 }


 clear_bit(__I40E_MDD_EVENT_PENDING, pf->state);
 reg = rd32(hw, I40E_PFINT_ICR0_ENA);
 reg |= I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
 wr32(hw, I40E_PFINT_ICR0_ENA, reg);
 i40e_flush(hw);
}

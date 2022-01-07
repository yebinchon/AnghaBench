
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vsi {struct i40e_q_vector** q_vectors; } ;
struct i40e_q_vector {int napi; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int flags; size_t lan_vsi; int state; TYPE_1__* pdev; int empr_count; int globr_count; int corer_count; struct i40e_hw hw; struct i40e_vsi** vsi; int sw_int_count; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int I40E_DEBUG_NVM ;
 int I40E_FLAG_IWARP_ENABLED ;
 int I40E_GLGEN_RSTAT ;
 int I40E_GLGEN_RSTAT_RESET_TYPE_MASK ;
 int I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT ;
 int I40E_PFHMC_ERRORDATA ;
 int I40E_PFHMC_ERRORINFO ;
 int I40E_PFINT_ICR0 ;
 int I40E_PFINT_ICR0_ADMINQ_MASK ;
 int I40E_PFINT_ICR0_ECC_ERR_MASK ;
 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_ADMINQ_MASK ;
 int I40E_PFINT_ICR0_ENA_GRST_MASK ;
 int I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ;
 int I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK ;
 int I40E_PFINT_ICR0_ENA_TIMESYNC_MASK ;
 int I40E_PFINT_ICR0_ENA_VFLR_MASK ;
 int I40E_PFINT_ICR0_GRST_MASK ;
 int I40E_PFINT_ICR0_HMC_ERR_MASK ;
 int I40E_PFINT_ICR0_INTEVENT_MASK ;
 int I40E_PFINT_ICR0_MAL_DETECT_MASK ;
 int I40E_PFINT_ICR0_PCI_EXCEPTION_MASK ;
 int I40E_PFINT_ICR0_PE_CRITERR_MASK ;
 int I40E_PFINT_ICR0_QUEUE_0_MASK ;
 int I40E_PFINT_ICR0_SWINT_MASK ;
 int I40E_PFINT_ICR0_TIMESYNC_MASK ;
 int I40E_PFINT_ICR0_VFLR_MASK ;
 int I40E_PRTTSYN_STAT_0 ;
 int I40E_PRTTSYN_STAT_0_TXTIME_MASK ;
 int I40E_RESET_CORER ;
 int I40E_RESET_EMPR ;
 int I40E_RESET_GLOBR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __I40E_ADMINQ_EVENT_PENDING ;
 int __I40E_CORE_RESET_REQUESTED ;
 int __I40E_DOWN ;
 int __I40E_EMP_RESET_INTR_RECEIVED ;
 int __I40E_MDD_EVENT_PENDING ;
 int __I40E_PF_RESET_REQUESTED ;
 int __I40E_RECOVERY_MODE ;
 int __I40E_RESET_INTR_RECEIVED ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int __I40E_VFLR_EVENT_PENDING ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int i40e_debug (struct i40e_hw*,int ,char*) ;
 int i40e_irq_dynamic_enable_icr0 (struct i40e_pf*) ;
 int i40e_ptp_tx_hwtstamp (struct i40e_pf*) ;
 int i40e_service_event_schedule (struct i40e_pf*) ;
 int napi_schedule_irqoff (int *) ;
 int rd32 (struct i40e_hw*,int ) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static irqreturn_t i40e_intr(int irq, void *data)
{
 struct i40e_pf *pf = (struct i40e_pf *)data;
 struct i40e_hw *hw = &pf->hw;
 irqreturn_t ret = IRQ_NONE;
 u32 icr0, icr0_remaining;
 u32 val, ena_mask;

 icr0 = rd32(hw, I40E_PFINT_ICR0);
 ena_mask = rd32(hw, I40E_PFINT_ICR0_ENA);


 if ((icr0 & I40E_PFINT_ICR0_INTEVENT_MASK) == 0)
  goto enable_intr;


 if (((icr0 & ~I40E_PFINT_ICR0_INTEVENT_MASK) == 0) ||
     (icr0 & I40E_PFINT_ICR0_SWINT_MASK))
  pf->sw_int_count++;

 if ((pf->flags & I40E_FLAG_IWARP_ENABLED) &&
     (icr0 & I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK)) {
  ena_mask &= ~I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK;
  dev_dbg(&pf->pdev->dev, "cleared PE_CRITERR\n");
  set_bit(__I40E_CORE_RESET_REQUESTED, pf->state);
 }


 if (icr0 & I40E_PFINT_ICR0_QUEUE_0_MASK) {
  struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
  struct i40e_q_vector *q_vector = vsi->q_vectors[0];







  if (!test_bit(__I40E_DOWN, pf->state))
   napi_schedule_irqoff(&q_vector->napi);
 }

 if (icr0 & I40E_PFINT_ICR0_ADMINQ_MASK) {
  ena_mask &= ~I40E_PFINT_ICR0_ENA_ADMINQ_MASK;
  set_bit(__I40E_ADMINQ_EVENT_PENDING, pf->state);
  i40e_debug(&pf->hw, I40E_DEBUG_NVM, "AdminQ event\n");
 }

 if (icr0 & I40E_PFINT_ICR0_MAL_DETECT_MASK) {
  ena_mask &= ~I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
  set_bit(__I40E_MDD_EVENT_PENDING, pf->state);
 }

 if (icr0 & I40E_PFINT_ICR0_VFLR_MASK) {
  ena_mask &= ~I40E_PFINT_ICR0_ENA_VFLR_MASK;
  set_bit(__I40E_VFLR_EVENT_PENDING, pf->state);
 }

 if (icr0 & I40E_PFINT_ICR0_GRST_MASK) {
  if (!test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
   set_bit(__I40E_RESET_INTR_RECEIVED, pf->state);
  ena_mask &= ~I40E_PFINT_ICR0_ENA_GRST_MASK;
  val = rd32(hw, I40E_GLGEN_RSTAT);
  val = (val & I40E_GLGEN_RSTAT_RESET_TYPE_MASK)
         >> I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT;
  if (val == I40E_RESET_CORER) {
   pf->corer_count++;
  } else if (val == I40E_RESET_GLOBR) {
   pf->globr_count++;
  } else if (val == I40E_RESET_EMPR) {
   pf->empr_count++;
   set_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state);
  }
 }

 if (icr0 & I40E_PFINT_ICR0_HMC_ERR_MASK) {
  icr0 &= ~I40E_PFINT_ICR0_HMC_ERR_MASK;
  dev_info(&pf->pdev->dev, "HMC error interrupt\n");
  dev_info(&pf->pdev->dev, "HMC error info 0x%x, HMC error data 0x%x\n",
    rd32(hw, I40E_PFHMC_ERRORINFO),
    rd32(hw, I40E_PFHMC_ERRORDATA));
 }

 if (icr0 & I40E_PFINT_ICR0_TIMESYNC_MASK) {
  u32 prttsyn_stat = rd32(hw, I40E_PRTTSYN_STAT_0);

  if (prttsyn_stat & I40E_PRTTSYN_STAT_0_TXTIME_MASK) {
   icr0 &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
   i40e_ptp_tx_hwtstamp(pf);
  }
 }





 icr0_remaining = icr0 & ena_mask;
 if (icr0_remaining) {
  dev_info(&pf->pdev->dev, "unhandled interrupt icr0=0x%08x\n",
    icr0_remaining);
  if ((icr0_remaining & I40E_PFINT_ICR0_PE_CRITERR_MASK) ||
      (icr0_remaining & I40E_PFINT_ICR0_PCI_EXCEPTION_MASK) ||
      (icr0_remaining & I40E_PFINT_ICR0_ECC_ERR_MASK)) {
   dev_info(&pf->pdev->dev, "device will be reset\n");
   set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
   i40e_service_event_schedule(pf);
  }
  ena_mask &= ~icr0_remaining;
 }
 ret = IRQ_HANDLED;

enable_intr:

 wr32(hw, I40E_PFINT_ICR0_ENA, ena_mask);
 if (!test_bit(__I40E_DOWN, pf->state) ||
     test_bit(__I40E_RECOVERY_MODE, pf->state)) {
  i40e_service_event_schedule(pf);
  i40e_irq_dynamic_enable_icr0(pf);
 }

 return ret;
}

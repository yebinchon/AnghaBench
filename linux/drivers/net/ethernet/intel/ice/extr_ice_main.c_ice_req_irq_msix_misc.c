
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct ice_pf {int num_avail_sw_msix; int oicr_idx; int irq_tracker; int * int_name; TYPE_2__* pdev; TYPE_1__* msix_entries; int state; struct ice_hw hw; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int vector; } ;


 int GLINT_ITR (int ,size_t) ;
 int ICE_ITR_8K ;
 int ICE_ITR_GRAN_S ;
 int ICE_RES_MISC_VEC_ID ;
 int ICE_RX_ITR ;
 int ITR_REG_ALIGN (int ) ;
 char* dev_driver_string (int *) ;
 int dev_err (int *,char*,int *,int) ;
 char* dev_name (int *) ;
 int devm_request_irq (int *,int ,int ,int ,int *,struct ice_pf*) ;
 int ice_ena_ctrlq_interrupts (struct ice_hw*,size_t) ;
 int ice_ena_misc_vector (struct ice_pf*) ;
 int ice_flush (struct ice_hw*) ;
 int ice_free_res (int ,int,int ) ;
 int ice_get_res (struct ice_pf*,int ,int,int ) ;
 int ice_irq_dynamic_ena (struct ice_hw*,int *,int *) ;
 scalar_t__ ice_is_reset_in_progress (int ) ;
 int ice_misc_intr ;
 int snprintf (int *,int,char*,char*,char*) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static int ice_req_irq_msix_misc(struct ice_pf *pf)
{
 struct ice_hw *hw = &pf->hw;
 int oicr_idx, err = 0;

 if (!pf->int_name[0])
  snprintf(pf->int_name, sizeof(pf->int_name) - 1, "%s-%s:misc",
    dev_driver_string(&pf->pdev->dev),
    dev_name(&pf->pdev->dev));





 if (ice_is_reset_in_progress(pf->state))
  goto skip_req_irq;


 oicr_idx = ice_get_res(pf, pf->irq_tracker, 1, ICE_RES_MISC_VEC_ID);
 if (oicr_idx < 0)
  return oicr_idx;

 pf->num_avail_sw_msix -= 1;
 pf->oicr_idx = oicr_idx;

 err = devm_request_irq(&pf->pdev->dev,
          pf->msix_entries[pf->oicr_idx].vector,
          ice_misc_intr, 0, pf->int_name, pf);
 if (err) {
  dev_err(&pf->pdev->dev,
   "devm_request_irq for %s failed: %d\n",
   pf->int_name, err);
  ice_free_res(pf->irq_tracker, 1, ICE_RES_MISC_VEC_ID);
  pf->num_avail_sw_msix += 1;
  return err;
 }

skip_req_irq:
 ice_ena_misc_vector(pf);

 ice_ena_ctrlq_interrupts(hw, pf->oicr_idx);
 wr32(hw, GLINT_ITR(ICE_RX_ITR, pf->oicr_idx),
      ITR_REG_ALIGN(ICE_ITR_8K) >> ICE_ITR_GRAN_S);

 ice_flush(hw);
 ice_irq_dynamic_ena(hw, ((void*)0), ((void*)0));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct ice_pf {size_t oicr_idx; int num_avail_sw_msix; int irq_tracker; TYPE_2__* msix_entries; TYPE_1__* pdev; struct ice_hw hw; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int dev; } ;


 int ICE_RES_MISC_VEC_ID ;
 int PFINT_OICR_ENA ;
 int devm_free_irq (int *,int ,struct ice_pf*) ;
 int ice_dis_ctrlq_interrupts (struct ice_hw*) ;
 int ice_flush (struct ice_hw*) ;
 int ice_free_res (int ,size_t,int ) ;
 int synchronize_irq (int ) ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static void ice_free_irq_msix_misc(struct ice_pf *pf)
{
 struct ice_hw *hw = &pf->hw;

 ice_dis_ctrlq_interrupts(hw);


 wr32(hw, PFINT_OICR_ENA, 0);
 ice_flush(hw);

 if (pf->msix_entries) {
  synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
  devm_free_irq(&pf->pdev->dev,
         pf->msix_entries[pf->oicr_idx].vector, pf);
 }

 pf->num_avail_sw_msix += 1;
 ice_free_res(pf->irq_tracker, pf->oicr_idx, ICE_RES_MISC_VEC_ID);
}

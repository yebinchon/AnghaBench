
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vsi {int state; } ;
struct i40e_pf {int flags; int num_alloc_vsi; TYPE_1__* pdev; struct i40e_vsi** vsi; int hw; } ;
struct TYPE_2__ {int dev; } ;


 int BIT_ULL (int ) ;
 int I40E_FLAG_DISABLE_FW_LLDP ;
 int I40E_GLGEN_RTRIG ;
 int I40E_GLGEN_RTRIG_CORER_MASK ;
 int I40E_GLGEN_RTRIG_GLOBR_MASK ;
 int I40E_PF_RESET_FLAG ;
 int WARN_ON (int ) ;
 int __I40E_CORE_RESET_REQUESTED ;
 int __I40E_DOWN_REQUESTED ;
 int __I40E_GLOBAL_RESET_REQUESTED ;
 int __I40E_REINIT_REQUESTED ;
 int __I40E_VSI_DOWN ;
 int __I40E_VSI_DOWN_REQUESTED ;
 int __I40E_VSI_REINIT_REQUESTED ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int i40e_down (struct i40e_vsi*) ;
 int i40e_flush (int *) ;
 int i40e_handle_reset_warning (struct i40e_pf*,int) ;
 int i40e_vsi_reinit_locked (struct i40e_vsi*) ;
 int in_interrupt () ;
 int rd32 (int *,int ) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;
 int wr32 (int *,int ,int) ;

void i40e_do_reset(struct i40e_pf *pf, u32 reset_flags, bool lock_acquired)
{
 u32 val;

 WARN_ON(in_interrupt());



 if (reset_flags & BIT_ULL(__I40E_GLOBAL_RESET_REQUESTED)) {
  dev_dbg(&pf->pdev->dev, "GlobalR requested\n");
  val = rd32(&pf->hw, I40E_GLGEN_RTRIG);
  val |= I40E_GLGEN_RTRIG_GLOBR_MASK;
  wr32(&pf->hw, I40E_GLGEN_RTRIG, val);

 } else if (reset_flags & BIT_ULL(__I40E_CORE_RESET_REQUESTED)) {





  dev_dbg(&pf->pdev->dev, "CoreR requested\n");
  val = rd32(&pf->hw, I40E_GLGEN_RTRIG);
  val |= I40E_GLGEN_RTRIG_CORER_MASK;
  wr32(&pf->hw, I40E_GLGEN_RTRIG, val);
  i40e_flush(&pf->hw);

 } else if (reset_flags & I40E_PF_RESET_FLAG) {
  dev_dbg(&pf->pdev->dev, "PFR requested\n");
  i40e_handle_reset_warning(pf, lock_acquired);

  dev_info(&pf->pdev->dev,
    pf->flags & I40E_FLAG_DISABLE_FW_LLDP ?
    "FW LLDP is disabled\n" :
    "FW LLDP is enabled\n");

 } else if (reset_flags & BIT_ULL(__I40E_REINIT_REQUESTED)) {
  int v;


  dev_info(&pf->pdev->dev,
    "VSI reinit requested\n");
  for (v = 0; v < pf->num_alloc_vsi; v++) {
   struct i40e_vsi *vsi = pf->vsi[v];

   if (vsi != ((void*)0) &&
       test_and_clear_bit(__I40E_VSI_REINIT_REQUESTED,
            vsi->state))
    i40e_vsi_reinit_locked(pf->vsi[v]);
  }
 } else if (reset_flags & BIT_ULL(__I40E_DOWN_REQUESTED)) {
  int v;


  dev_info(&pf->pdev->dev, "VSI down requested\n");
  for (v = 0; v < pf->num_alloc_vsi; v++) {
   struct i40e_vsi *vsi = pf->vsi[v];

   if (vsi != ((void*)0) &&
       test_and_clear_bit(__I40E_VSI_DOWN_REQUESTED,
            vsi->state)) {
    set_bit(__I40E_VSI_DOWN, vsi->state);
    i40e_down(vsi);
   }
  }
 } else {
  dev_info(&pf->pdev->dev,
    "bad reset request 0x%08x\n", reset_flags);
 }
}

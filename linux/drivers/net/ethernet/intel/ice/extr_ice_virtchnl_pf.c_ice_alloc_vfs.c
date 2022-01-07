
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ice_vf {int vf_id; int spoofchk; int vf_caps; int vf_sw_id; struct ice_pf* pf; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int num_alloc_vfs; int * state; TYPE_1__* pdev; struct ice_vf* vf; int first_sw; int oicr_idx; struct ice_hw hw; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GLINT_DYN_CTL (int ) ;
 int GLINT_DYN_CTL_ITR_INDX_S ;
 int ICE_ITR_NONE ;
 int ICE_VIRTCHNL_VF_CAP_L2 ;
 int __ICE_OICR_INTR_DIS ;
 int clear_bit (int ,int *) ;
 struct ice_vf* devm_kcalloc (int *,int,int,int ) ;
 int devm_kfree (int *,struct ice_vf*) ;
 int ice_config_res_vfs (struct ice_pf*) ;
 int ice_flush (struct ice_hw*) ;
 int ice_irq_dynamic_ena (struct ice_hw*,int *,int *) ;
 int pci_disable_sriov (TYPE_1__*) ;
 int pci_enable_sriov (TYPE_1__*,int) ;
 int set_bit (int ,int *) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
{
 struct ice_hw *hw = &pf->hw;
 struct ice_vf *vfs;
 int i, ret;


 wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
      ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
 set_bit(__ICE_OICR_INTR_DIS, pf->state);
 ice_flush(hw);

 ret = pci_enable_sriov(pf->pdev, num_alloc_vfs);
 if (ret) {
  pf->num_alloc_vfs = 0;
  goto err_unroll_intr;
 }

 vfs = devm_kcalloc(&pf->pdev->dev, num_alloc_vfs, sizeof(*vfs),
      GFP_KERNEL);
 if (!vfs) {
  ret = -ENOMEM;
  goto err_pci_disable_sriov;
 }
 pf->vf = vfs;


 for (i = 0; i < num_alloc_vfs; i++) {
  vfs[i].pf = pf;
  vfs[i].vf_sw_id = pf->first_sw;
  vfs[i].vf_id = i;


  set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vfs[i].vf_caps);
  vfs[i].spoofchk = 1;
 }
 pf->num_alloc_vfs = num_alloc_vfs;


 if (!ice_config_res_vfs(pf)) {
  ret = -EIO;
  goto err_unroll_sriov;
 }

 return ret;

err_unroll_sriov:
 pf->vf = ((void*)0);
 devm_kfree(&pf->pdev->dev, vfs);
 vfs = ((void*)0);
 pf->num_alloc_vfs = 0;
err_pci_disable_sriov:
 pci_disable_sriov(pf->pdev);
err_unroll_intr:

 ice_irq_dynamic_ena(hw, ((void*)0), ((void*)0));
 clear_bit(__ICE_OICR_INTR_DIS, pf->state);
 return ret;
}

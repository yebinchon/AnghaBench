
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; int state; TYPE_2__* pdev; TYPE_4__* vf; int * vsi; struct i40e_hw hw; } ;
struct TYPE_9__ {size_t lan_vsi_idx; int vf_states; } ;
struct TYPE_8__ {int dev; } ;


 int BIT (int) ;
 int I40E_GLGEN_VFLRSTAT (int) ;
 int I40E_VF_STATE_INIT ;
 int __I40E_VF_DISABLE ;
 int clear_bit (int ,int ) ;
 int dev_warn (int *,char*) ;
 int i40e_disable_vf_mappings (TYPE_4__*) ;
 int i40e_free_vf_res (TYPE_4__*) ;
 int i40e_notify_client_of_vf_enable (struct i40e_pf*,int ) ;
 int i40e_vsi_stop_rings_no_wait (int ) ;
 int i40e_vsi_wait_queues_disabled (int ) ;
 int kfree (TYPE_4__*) ;
 int pci_disable_sriov (TYPE_2__*) ;
 int pci_vfs_assigned (TYPE_2__*) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

void i40e_free_vfs(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 reg_idx, bit_idx;
 int i, tmp, vf_id;

 if (!pf->vf)
  return;
 while (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
  usleep_range(1000, 2000);

 i40e_notify_client_of_vf_enable(pf, 0);


 for (i = 0; i < pf->num_alloc_vfs; i++) {
  if (test_bit(I40E_VF_STATE_INIT, &pf->vf[i].vf_states))
   continue;

  i40e_vsi_stop_rings_no_wait(pf->vsi[pf->vf[i].lan_vsi_idx]);
 }

 for (i = 0; i < pf->num_alloc_vfs; i++) {
  if (test_bit(I40E_VF_STATE_INIT, &pf->vf[i].vf_states))
   continue;

  i40e_vsi_wait_queues_disabled(pf->vsi[pf->vf[i].lan_vsi_idx]);
 }





 if (!pci_vfs_assigned(pf->pdev))
  pci_disable_sriov(pf->pdev);
 else
  dev_warn(&pf->pdev->dev, "VFs are assigned - not disabling SR-IOV\n");


 tmp = pf->num_alloc_vfs;
 pf->num_alloc_vfs = 0;
 for (i = 0; i < tmp; i++) {
  if (test_bit(I40E_VF_STATE_INIT, &pf->vf[i].vf_states))
   i40e_free_vf_res(&pf->vf[i]);

  i40e_disable_vf_mappings(&pf->vf[i]);
 }

 kfree(pf->vf);
 pf->vf = ((void*)0);





 if (!pci_vfs_assigned(pf->pdev)) {



  for (vf_id = 0; vf_id < tmp; vf_id++) {
   reg_idx = (hw->func_caps.vf_base_id + vf_id) / 32;
   bit_idx = (hw->func_caps.vf_base_id + vf_id) % 32;
   wr32(hw, I40E_GLGEN_VFLRSTAT(reg_idx), BIT(bit_idx));
  }
 }
 clear_bit(__I40E_VF_DISABLE, pf->state);
}

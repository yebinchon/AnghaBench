
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vf {scalar_t__ num_queue_pairs; int lan_vsi_idx; int num_tc; int vf_id; int vf_states; TYPE_1__* ch; scalar_t__ adq_enabled; scalar_t__ num_mac; scalar_t__ lan_vsi_id; struct i40e_pf* pf; } ;
struct TYPE_4__ {int num_msix_vectors_vf; } ;
struct i40e_hw {TYPE_2__ func_caps; } ;
struct i40e_pf {struct i40e_hw hw; int * vsi; int queues_left; } ;
struct TYPE_3__ {size_t vsi_idx; scalar_t__ vsi_id; } ;


 scalar_t__ I40E_DEFAULT_QUEUES_PER_VF ;
 int I40E_VFINT_DYN_CTL0 (int) ;
 int I40E_VFINT_DYN_CTLN (int) ;
 int I40E_VFINT_DYN_CTLN_CLEARPBA_MASK ;
 int I40E_VF_STATE_INIT ;
 int I40E_VF_STATE_MC_PROMISC ;
 int I40E_VF_STATE_UC_PROMISC ;
 int I40E_VPINT_LNKLST0 (int) ;
 int I40E_VPINT_LNKLSTN (int) ;
 int I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK ;
 int I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK ;
 int clear_bit (int ,int *) ;
 int i40e_flush (struct i40e_hw*) ;
 int i40e_vsi_release (int ) ;
 int wr32 (struct i40e_hw*,int,int) ;

__attribute__((used)) static void i40e_free_vf_res(struct i40e_vf *vf)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 u32 reg_idx, reg;
 int i, j, msix_vf;




 clear_bit(I40E_VF_STATE_INIT, &vf->vf_states);




 if (vf->num_queue_pairs > I40E_DEFAULT_QUEUES_PER_VF) {
  pf->queues_left += vf->num_queue_pairs -
       I40E_DEFAULT_QUEUES_PER_VF;
 }


 if (vf->lan_vsi_idx) {
  i40e_vsi_release(pf->vsi[vf->lan_vsi_idx]);
  vf->lan_vsi_idx = 0;
  vf->lan_vsi_id = 0;
  vf->num_mac = 0;
 }


 if (vf->adq_enabled && vf->ch[0].vsi_idx) {
  for (j = 0; j < vf->num_tc; j++) {




   if (j)
    i40e_vsi_release(pf->vsi[vf->ch[j].vsi_idx]);
   vf->ch[j].vsi_idx = 0;
   vf->ch[j].vsi_id = 0;
  }
 }
 msix_vf = pf->hw.func_caps.num_msix_vectors_vf;


 for (i = 0; i < msix_vf; i++) {

  if (0 == i)
   reg_idx = I40E_VFINT_DYN_CTL0(vf->vf_id);
  else
   reg_idx = I40E_VFINT_DYN_CTLN(((msix_vf - 1) *
            (vf->vf_id))
           + (i - 1));
  wr32(hw, reg_idx, I40E_VFINT_DYN_CTLN_CLEARPBA_MASK);
  i40e_flush(hw);
 }


 for (i = 0; i < msix_vf; i++) {

  if (0 == i)
   reg_idx = I40E_VPINT_LNKLST0(vf->vf_id);
  else
   reg_idx = I40E_VPINT_LNKLSTN(((msix_vf - 1) *
            (vf->vf_id))
           + (i - 1));
  reg = (I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK |
         I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK);
  wr32(hw, reg_idx, reg);
  i40e_flush(hw);
 }

 vf->num_queue_pairs = 0;
 clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
 clear_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states);
}

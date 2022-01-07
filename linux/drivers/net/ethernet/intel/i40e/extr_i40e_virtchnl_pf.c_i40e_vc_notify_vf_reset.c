
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_pf_event {int severity; int event; } ;
struct i40e_vf {int vf_id; TYPE_2__* pf; int vf_states; } ;
struct TYPE_4__ {scalar_t__ vf_base_id; } ;
struct TYPE_6__ {TYPE_1__ func_caps; } ;
struct TYPE_5__ {int num_alloc_vfs; TYPE_3__ hw; } ;


 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_INIT ;
 int PF_EVENT_SEVERITY_CERTAIN_DOOM ;
 int VIRTCHNL_EVENT_RESET_IMPENDING ;
 int VIRTCHNL_OP_EVENT ;
 int i40e_aq_send_msg_to_vf (TYPE_3__*,int,int ,int ,int *,int,int *) ;
 int test_bit (int ,int *) ;

void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
{
 struct virtchnl_pf_event pfe;
 int abs_vf_id;


 if (!vf || vf->vf_id >= vf->pf->num_alloc_vfs)
  return;


 if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states) &&
     !test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states))
  return;

 abs_vf_id = vf->vf_id + (int)vf->pf->hw.func_caps.vf_base_id;

 pfe.event = VIRTCHNL_EVENT_RESET_IMPENDING;
 pfe.severity = PF_EVENT_SEVERITY_CERTAIN_DOOM;
 i40e_aq_send_msg_to_vf(&vf->pf->hw, abs_vf_id, VIRTCHNL_OP_EVENT,
          0, (u8 *)&pfe,
          sizeof(struct virtchnl_pf_event), ((void*)0));
}

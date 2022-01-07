
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_pf_event {int severity; int event; } ;
struct ice_vf {scalar_t__ vf_id; TYPE_1__* pf; int vf_states; } ;
typedef int pfe ;
struct TYPE_2__ {scalar_t__ num_alloc_vfs; int hw; } ;


 int ICE_VF_STATE_ACTIVE ;
 int ICE_VF_STATE_INIT ;
 int PF_EVENT_SEVERITY_CERTAIN_DOOM ;
 int VIRTCHNL_EVENT_RESET_IMPENDING ;
 int VIRTCHNL_OP_EVENT ;
 int VIRTCHNL_STATUS_SUCCESS ;
 int ice_aq_send_msg_to_vf (int *,scalar_t__,int ,int ,int *,int,int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void ice_vc_notify_vf_reset(struct ice_vf *vf)
{
 struct virtchnl_pf_event pfe;


 if (!vf || vf->vf_id >= vf->pf->num_alloc_vfs)
  return;


 if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states) &&
     !test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
  return;

 pfe.event = VIRTCHNL_EVENT_RESET_IMPENDING;
 pfe.severity = PF_EVENT_SEVERITY_CERTAIN_DOOM;
 ice_aq_send_msg_to_vf(&vf->pf->hw, vf->vf_id, VIRTCHNL_OP_EVENT,
         VIRTCHNL_STATUS_SUCCESS, (u8 *)&pfe, sizeof(pfe),
         ((void*)0));
}

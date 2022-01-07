
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_pf_event {int severity; int event; int member_0; } ;
struct ice_vf {int vf_id; int link_up; scalar_t__ link_forced; int num_qs_ena; struct ice_pf* pf; } ;
struct ice_hw {TYPE_2__* port_info; } ;
struct ice_pf {struct ice_hw hw; } ;
struct ice_link_status {int link_info; int link_speed; } ;
typedef int pfe ;
struct TYPE_3__ {struct ice_link_status link_info; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;


 int ICE_AQ_LINK_SPEED_UNKNOWN ;
 int ICE_AQ_LINK_UP ;
 int PF_EVENT_SEVERITY_INFO ;
 int VIRTCHNL_EVENT_LINK_CHANGE ;
 int VIRTCHNL_OP_EVENT ;
 int VIRTCHNL_STATUS_SUCCESS ;
 int ice_aq_send_msg_to_vf (struct ice_hw*,int ,int ,int ,int *,int,int *) ;
 int ice_set_pfe_link (struct ice_vf*,struct virtchnl_pf_event*,int ,int) ;
 int ice_set_pfe_link_forced (struct ice_vf*,struct virtchnl_pf_event*,int ) ;

__attribute__((used)) static void ice_vc_notify_vf_link_state(struct ice_vf *vf)
{
 struct virtchnl_pf_event pfe = { 0 };
 struct ice_link_status *ls;
 struct ice_pf *pf = vf->pf;
 struct ice_hw *hw;

 hw = &pf->hw;
 ls = &hw->port_info->phy.link_info;

 pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 pfe.severity = PF_EVENT_SEVERITY_INFO;


 if (!vf->num_qs_ena)
  ice_set_pfe_link(vf, &pfe, ICE_AQ_LINK_SPEED_UNKNOWN, 0);
 else if (vf->link_forced)
  ice_set_pfe_link_forced(vf, &pfe, vf->link_up);
 else
  ice_set_pfe_link(vf, &pfe, ls->link_speed, ls->link_info &
     ICE_AQ_LINK_UP);

 ice_aq_send_msg_to_vf(hw, vf->vf_id, VIRTCHNL_OP_EVENT,
         VIRTCHNL_STATUS_SUCCESS, (u8 *)&pfe,
         sizeof(pfe), ((void*)0));
}

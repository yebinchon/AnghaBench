
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int link_status; int link_speed; } ;
struct TYPE_8__ {TYPE_3__ link_event; } ;
struct virtchnl_pf_event {TYPE_4__ event_data; int severity; int event; } ;
struct i40e_vf {int vf_id; int link_up; scalar_t__ link_forced; int queues_enabled; struct i40e_pf* pf; } ;
struct TYPE_6__ {scalar_t__ vf_base_id; } ;
struct i40e_link_status {int link_info; int link_speed; } ;
struct TYPE_5__ {struct i40e_link_status link_info; } ;
struct i40e_hw {TYPE_2__ func_caps; TYPE_1__ phy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
typedef int pfe ;


 int I40E_AQ_LINK_UP ;
 int PF_EVENT_SEVERITY_INFO ;
 int VIRTCHNL_EVENT_LINK_CHANGE ;
 int VIRTCHNL_LINK_SPEED_40GB ;
 int VIRTCHNL_OP_EVENT ;
 int i40e_aq_send_msg_to_vf (struct i40e_hw*,int,int ,int ,int *,int,int *) ;
 int i40e_virtchnl_link_speed (int ) ;

__attribute__((used)) static void i40e_vc_notify_vf_link_state(struct i40e_vf *vf)
{
 struct virtchnl_pf_event pfe;
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 struct i40e_link_status *ls = &pf->hw.phy.link_info;
 int abs_vf_id = vf->vf_id + (int)hw->func_caps.vf_base_id;

 pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 pfe.severity = PF_EVENT_SEVERITY_INFO;


 if (!vf->queues_enabled) {
  pfe.event_data.link_event.link_status = 0;
  pfe.event_data.link_event.link_speed = 0;
 } else if (vf->link_forced) {
  pfe.event_data.link_event.link_status = vf->link_up;
  pfe.event_data.link_event.link_speed =
   (vf->link_up ? VIRTCHNL_LINK_SPEED_40GB : 0);
 } else {
  pfe.event_data.link_event.link_status =
   ls->link_info & I40E_AQ_LINK_UP;
  pfe.event_data.link_event.link_speed =
   i40e_virtchnl_link_speed(ls->link_speed);
 }

 i40e_aq_send_msg_to_vf(hw, abs_vf_id, VIRTCHNL_OP_EVENT,
          0, (u8 *)&pfe, sizeof(pfe), ((void*)0));
}

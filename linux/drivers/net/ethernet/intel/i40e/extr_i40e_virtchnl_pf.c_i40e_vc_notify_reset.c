
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_pf_event {int severity; int event; } ;
struct i40e_pf {int dummy; } ;


 int PF_EVENT_SEVERITY_CERTAIN_DOOM ;
 int VIRTCHNL_EVENT_RESET_IMPENDING ;
 int VIRTCHNL_OP_EVENT ;
 int i40e_vc_vf_broadcast (struct i40e_pf*,int ,int ,int *,int) ;

void i40e_vc_notify_reset(struct i40e_pf *pf)
{
 struct virtchnl_pf_event pfe;

 pfe.event = VIRTCHNL_EVENT_RESET_IMPENDING;
 pfe.severity = PF_EVENT_SEVERITY_CERTAIN_DOOM;
 i40e_vc_vf_broadcast(pf, VIRTCHNL_OP_EVENT, 0,
        (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
}

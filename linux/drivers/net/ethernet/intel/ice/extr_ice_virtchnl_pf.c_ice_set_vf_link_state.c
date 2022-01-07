
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_pf_event {int severity; int event; int member_0; } ;
struct net_device {int dummy; } ;
struct ice_vf {int link_forced; int link_up; int vf_id; int vf_states; } ;
struct ice_hw {TYPE_3__* port_info; } ;
struct ice_pf {int num_alloc_vfs; TYPE_4__* pdev; struct ice_hw hw; struct ice_vf* vf; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct ice_link_status {int link_info; int link_speed; } ;
typedef int pfe ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {struct ice_link_status link_info; } ;
struct TYPE_7__ {TYPE_2__ phy; } ;
struct TYPE_5__ {struct ice_pf* back; } ;


 int EBUSY ;
 int EINVAL ;
 int ICE_AQ_LINK_UP ;
 int ICE_VF_STATE_INIT ;



 int PF_EVENT_SEVERITY_INFO ;
 int VIRTCHNL_EVENT_LINK_CHANGE ;
 int VIRTCHNL_OP_EVENT ;
 int VIRTCHNL_STATUS_SUCCESS ;
 int dev_err (int *,char*,int) ;
 int ice_aq_send_msg_to_vf (struct ice_hw*,int ,int ,int ,int *,int,int *) ;
 int ice_set_pfe_link (struct ice_vf*,struct virtchnl_pf_event*,int ,int) ;
 int ice_set_pfe_link_forced (struct ice_vf*,struct virtchnl_pf_event*,int) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;
 struct virtchnl_pf_event pfe = { 0 };
 struct ice_link_status *ls;
 struct ice_vf *vf;
 struct ice_hw *hw;

 if (vf_id >= pf->num_alloc_vfs) {
  dev_err(&pf->pdev->dev, "Invalid VF Identifier %d\n", vf_id);
  return -EINVAL;
 }

 vf = &pf->vf[vf_id];
 hw = &pf->hw;
 ls = &pf->hw.port_info->phy.link_info;

 if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
  dev_err(&pf->pdev->dev, "vf %d in reset. Try again.\n", vf_id);
  return -EBUSY;
 }

 pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 pfe.severity = PF_EVENT_SEVERITY_INFO;

 switch (link_state) {
 case 130:
  vf->link_forced = 0;
  vf->link_up = ls->link_info & ICE_AQ_LINK_UP;
  break;
 case 128:
  vf->link_forced = 1;
  vf->link_up = 1;
  break;
 case 129:
  vf->link_forced = 1;
  vf->link_up = 0;
  break;
 default:
  return -EINVAL;
 }

 if (vf->link_forced)
  ice_set_pfe_link_forced(vf, &pfe, vf->link_up);
 else
  ice_set_pfe_link(vf, &pfe, ls->link_speed, vf->link_up);


 ice_aq_send_msg_to_vf(hw, vf->vf_id, VIRTCHNL_OP_EVENT,
         VIRTCHNL_STATUS_SUCCESS, (u8 *)&pfe,
         sizeof(pfe), ((void*)0));

 return 0;
}

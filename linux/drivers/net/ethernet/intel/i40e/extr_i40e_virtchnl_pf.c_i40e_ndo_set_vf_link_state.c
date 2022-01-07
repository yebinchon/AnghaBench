
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int link_status; int link_speed; } ;
struct TYPE_14__ {TYPE_6__ link_event; } ;
struct virtchnl_pf_event {TYPE_7__ event_data; int severity; int event; } ;
struct net_device {int dummy; } ;
struct i40e_vf {int vf_id; int link_forced; int link_up; } ;
struct TYPE_11__ {int link_info; int link_speed; } ;
struct TYPE_12__ {TYPE_4__ link_info; } ;
struct TYPE_10__ {int vf_base_id; } ;
struct i40e_hw {TYPE_5__ phy; TYPE_3__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; int state; struct i40e_hw hw; struct i40e_vf* vf; TYPE_2__* pdev; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
typedef int pfe ;
typedef enum virtchnl_link_speed { ____Placeholder_virtchnl_link_speed } virtchnl_link_speed ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {struct i40e_pf* back; } ;


 int EAGAIN ;
 int EINVAL ;
 int I40E_AQ_LINK_UP ;



 int PF_EVENT_SEVERITY_INFO ;
 int VIRTCHNL_EVENT_LINK_CHANGE ;
 int VIRTCHNL_LINK_SPEED_40GB ;
 int VIRTCHNL_OP_EVENT ;
 int __I40E_VIRTCHNL_OP_PENDING ;
 int clear_bit (int ,int ) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int i40e_aq_send_msg_to_vf (struct i40e_hw*,int,int ,int ,int *,int,int *) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 struct virtchnl_pf_event pfe;
 struct i40e_hw *hw = &pf->hw;
 struct i40e_vf *vf;
 int abs_vf_id;
 int ret = 0;

 if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
  dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
  return -EAGAIN;
 }


 if (vf_id >= pf->num_alloc_vfs) {
  dev_err(&pf->pdev->dev, "Invalid VF Identifier %d\n", vf_id);
  ret = -EINVAL;
  goto error_out;
 }

 vf = &pf->vf[vf_id];
 abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;

 pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 pfe.severity = PF_EVENT_SEVERITY_INFO;

 switch (link) {
 case 130:
  vf->link_forced = 0;
  pfe.event_data.link_event.link_status =
   pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
  pfe.event_data.link_event.link_speed =
   (enum virtchnl_link_speed)
   pf->hw.phy.link_info.link_speed;
  break;
 case 128:
  vf->link_forced = 1;
  vf->link_up = 1;
  pfe.event_data.link_event.link_status = 1;
  pfe.event_data.link_event.link_speed = VIRTCHNL_LINK_SPEED_40GB;
  break;
 case 129:
  vf->link_forced = 1;
  vf->link_up = 0;
  pfe.event_data.link_event.link_status = 0;
  pfe.event_data.link_event.link_speed = 0;
  break;
 default:
  ret = -EINVAL;
  goto error_out;
 }

 i40e_aq_send_msg_to_vf(hw, abs_vf_id, VIRTCHNL_OP_EVENT,
          0, (u8 *)&pfe, sizeof(pfe), ((void*)0));

error_out:
 clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
 return ret;
}

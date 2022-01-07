
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct i40e_vsi {int netdev; int state; } ;
struct TYPE_8__ {scalar_t__ link_speed; } ;
struct TYPE_7__ {int link_info; scalar_t__ link_speed; } ;
struct TYPE_9__ {int get_link_info; TYPE_3__ link_info; TYPE_2__ link_info_old; } ;
struct TYPE_10__ {TYPE_4__ phy; } ;
struct i40e_pf {size_t lan_vsi; size_t lan_veb; int flags; scalar_t__ vf; scalar_t__* veb; TYPE_5__ hw; TYPE_1__* pdev; int state; struct i40e_vsi** vsi; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_6__ {int dev; } ;


 int I40E_AQ_LINK_UP ;
 int I40E_FLAG_PTP ;
 size_t I40E_MAX_VEB ;
 scalar_t__ I40E_SUCCESS ;
 int __I40E_TEMP_LINK_POLLING ;
 int __I40E_VSI_DOWN ;
 int clear_bit (int ,int ) ;
 int dev_dbg (int *,char*,scalar_t__) ;
 scalar_t__ i40e_get_link_status (TYPE_5__*,int*) ;
 int i40e_print_link_message (struct i40e_vsi*,int) ;
 int i40e_ptp_set_increment (struct i40e_pf*) ;
 int i40e_vc_notify_link_state (struct i40e_pf*) ;
 int i40e_veb_link_event (scalar_t__,int) ;
 int i40e_vsi_link_event (struct i40e_vsi*,int) ;
 int netif_carrier_ok (int ) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void i40e_link_event(struct i40e_pf *pf)
{
 struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 u8 new_link_speed, old_link_speed;
 i40e_status status;
 bool new_link, old_link;


 pf->hw.phy.get_link_info = 1;
 old_link = (pf->hw.phy.link_info_old.link_info & I40E_AQ_LINK_UP);
 status = i40e_get_link_status(&pf->hw, &new_link);


 if (status == I40E_SUCCESS) {
  clear_bit(__I40E_TEMP_LINK_POLLING, pf->state);
 } else {



  set_bit(__I40E_TEMP_LINK_POLLING, pf->state);
  dev_dbg(&pf->pdev->dev, "couldn't get link state, status: %d\n",
   status);
  return;
 }

 old_link_speed = pf->hw.phy.link_info_old.link_speed;
 new_link_speed = pf->hw.phy.link_info.link_speed;

 if (new_link == old_link &&
     new_link_speed == old_link_speed &&
     (test_bit(__I40E_VSI_DOWN, vsi->state) ||
      new_link == netif_carrier_ok(vsi->netdev)))
  return;

 i40e_print_link_message(vsi, new_link);




 if (pf->lan_veb < I40E_MAX_VEB && pf->veb[pf->lan_veb])
  i40e_veb_link_event(pf->veb[pf->lan_veb], new_link);
 else
  i40e_vsi_link_event(vsi, new_link);

 if (pf->vf)
  i40e_vc_notify_link_state(pf);

 if (pf->flags & I40E_FLAG_PTP)
  i40e_ptp_set_increment(pf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_vsi {TYPE_2__* back; int state; int seid; } ;
struct i40e_mac_filter {scalar_t__ state; int vlan; } ;
struct TYPE_6__ {int asq_last_status; } ;
struct i40e_hw {TYPE_3__ aq; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_5__ {TYPE_1__* pdev; struct i40e_hw hw; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ I40E_FILTER_NEW ;
 int I40E_VLAN_ANY ;
 int __I40E_VSI_OVERFLOW_PROMISC ;
 int dev_warn (int *,char*,int ,char const*) ;
 scalar_t__ i40e_aq_set_vsi_bc_promisc_on_vlan (struct i40e_hw*,int ,int,int ,int *) ;
 scalar_t__ i40e_aq_set_vsi_broadcast (struct i40e_hw*,int ,int,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static i40e_status
i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
     struct i40e_mac_filter *f)
{
 bool enable = f->state == I40E_FILTER_NEW;
 struct i40e_hw *hw = &vsi->back->hw;
 i40e_status aq_ret;

 if (f->vlan == I40E_VLAN_ANY) {
  aq_ret = i40e_aq_set_vsi_broadcast(hw,
         vsi->seid,
         enable,
         ((void*)0));
 } else {
  aq_ret = i40e_aq_set_vsi_bc_promisc_on_vlan(hw,
           vsi->seid,
           enable,
           f->vlan,
           ((void*)0));
 }

 if (aq_ret) {
  set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
  dev_warn(&vsi->back->pdev->dev,
    "Error %s, forcing overflow promiscuous on %s\n",
    i40e_aq_str(hw, hw->aq.asq_last_status),
    vsi_name);
 }

 return aq_ret;
}

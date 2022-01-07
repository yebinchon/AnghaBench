
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40e_vsi {scalar_t__ type; int seid; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_pf {size_t lan_vsi; scalar_t__ lan_veb; int flags; int cur_promisc; TYPE_1__* pdev; struct i40e_hw hw; struct i40e_vsi** vsi; } ;
typedef int i40e_status ;
struct TYPE_3__ {int dev; } ;


 int I40E_FLAG_MFP_ENABLED ;
 scalar_t__ I40E_NO_VEB ;
 scalar_t__ I40E_VSI_MAIN ;
 int dev_info (int *,char*,int ,int ) ;
 int i40e_aq_clear_default_vsi (struct i40e_hw*,int ,int *) ;
 int i40e_aq_set_default_vsi (struct i40e_hw*,int ,int *) ;
 int i40e_aq_set_vsi_multicast_promiscuous (struct i40e_hw*,int ,int,int *) ;
 int i40e_aq_set_vsi_unicast_promiscuous (struct i40e_hw*,int ,int,int *,int) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_stat_str (struct i40e_hw*,int) ;

__attribute__((used)) static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
{
 struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 struct i40e_hw *hw = &pf->hw;
 i40e_status aq_ret;

 if (vsi->type == I40E_VSI_MAIN &&
     pf->lan_veb != I40E_NO_VEB &&
     !(pf->flags & I40E_FLAG_MFP_ENABLED)) {





  if (promisc)
   aq_ret = i40e_aq_set_default_vsi(hw,
        vsi->seid,
        ((void*)0));
  else
   aq_ret = i40e_aq_clear_default_vsi(hw,
          vsi->seid,
          ((void*)0));
  if (aq_ret) {
   dev_info(&pf->pdev->dev,
     "Set default VSI failed, err %s, aq_err %s\n",
     i40e_stat_str(hw, aq_ret),
     i40e_aq_str(hw, hw->aq.asq_last_status));
  }
 } else {
  aq_ret = i40e_aq_set_vsi_unicast_promiscuous(
        hw,
        vsi->seid,
        promisc, ((void*)0),
        1);
  if (aq_ret) {
   dev_info(&pf->pdev->dev,
     "set unicast promisc failed, err %s, aq_err %s\n",
     i40e_stat_str(hw, aq_ret),
     i40e_aq_str(hw, hw->aq.asq_last_status));
  }
  aq_ret = i40e_aq_set_vsi_multicast_promiscuous(
        hw,
        vsi->seid,
        promisc, ((void*)0));
  if (aq_ret) {
   dev_info(&pf->pdev->dev,
     "set multicast promisc failed, err %s, aq_err %s\n",
     i40e_stat_str(hw, aq_ret),
     i40e_aq_str(hw, hw->aq.asq_last_status));
  }
 }

 if (!aq_ret)
  pf->cur_promisc = promisc;

 return aq_ret;
}

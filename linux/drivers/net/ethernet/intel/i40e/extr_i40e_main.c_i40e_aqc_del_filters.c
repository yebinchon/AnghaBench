
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_vsi {TYPE_3__* back; int seid; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_aqc_remove_macvlan_element_data {int dummy; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_6__ {TYPE_2__* pdev; struct i40e_hw hw; } ;
struct TYPE_5__ {int dev; } ;


 int EIO ;
 int I40E_AQ_RC_ENOENT ;
 int dev_info (int *,char*,char const*,int ,int ) ;
 scalar_t__ i40e_aq_remove_macvlan (struct i40e_hw*,int ,struct i40e_aqc_remove_macvlan_element_data*,int,int *) ;
 int i40e_aq_str (struct i40e_hw*,int) ;
 int i40e_stat_str (struct i40e_hw*,scalar_t__) ;

__attribute__((used)) static
void i40e_aqc_del_filters(struct i40e_vsi *vsi, const char *vsi_name,
     struct i40e_aqc_remove_macvlan_element_data *list,
     int num_del, int *retval)
{
 struct i40e_hw *hw = &vsi->back->hw;
 i40e_status aq_ret;
 int aq_err;

 aq_ret = i40e_aq_remove_macvlan(hw, vsi->seid, list, num_del, ((void*)0));
 aq_err = hw->aq.asq_last_status;


 if (aq_ret && !(aq_err == I40E_AQ_RC_ENOENT)) {
  *retval = -EIO;
  dev_info(&vsi->back->pdev->dev,
    "ignoring delete macvlan error on %s, err %s, aq_err %s\n",
    vsi_name, i40e_stat_str(hw, aq_ret),
    i40e_aq_str(hw, aq_err));
 }
}

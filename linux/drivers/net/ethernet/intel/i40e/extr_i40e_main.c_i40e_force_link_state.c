
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_pf {struct i40e_hw hw; TYPE_1__* pdev; } ;
struct i40e_aq_set_phy_config {scalar_t__ link_speed; int fec_config; int low_power_ctrl; int eeer; int eee_capability; int abilities; void* phy_type_ext; int phy_type; int member_0; } ;
struct i40e_aq_get_phy_abilities_resp {scalar_t__ link_speed; scalar_t__ phy_type; int fec_cfg_curr_mod_ext_info; int d3_lpan; int eeer_val; int eee_capability; int abilities; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_3__ {int dev; } ;


 int I40E_AQ_PHY_FEC_CONFIG_MASK ;
 int I40E_PHY_TYPES_BITMASK ;
 scalar_t__ I40E_SUCCESS ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*,int ,int ) ;
 scalar_t__ i40e_aq_get_phy_capabilities (struct i40e_hw*,int,int,struct i40e_aq_get_phy_abilities_resp*,int *) ;
 int i40e_aq_set_link_restart_an (struct i40e_hw*,int,int *) ;
 scalar_t__ i40e_aq_set_phy_config (struct i40e_hw*,struct i40e_aq_set_phy_config*,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_stat_str (struct i40e_hw*,scalar_t__) ;
 scalar_t__ i40e_update_link_info (struct i40e_hw*) ;
 int msleep (int) ;

__attribute__((used)) static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
{
 struct i40e_aq_get_phy_abilities_resp abilities;
 struct i40e_aq_set_phy_config config = {0};
 struct i40e_hw *hw = &pf->hw;
 i40e_status err;
 u64 mask;
 u8 speed;







 err = i40e_aq_get_phy_capabilities(hw, 0, 1, &abilities,
        ((void*)0));
 if (err) {
  dev_err(&pf->pdev->dev,
   "failed to get phy cap., ret =  %s last_status =  %s\n",
   i40e_stat_str(hw, err),
   i40e_aq_str(hw, hw->aq.asq_last_status));
  return err;
 }
 speed = abilities.link_speed;


 err = i40e_aq_get_phy_capabilities(hw, 0, 0, &abilities,
        ((void*)0));
 if (err) {
  dev_err(&pf->pdev->dev,
   "failed to get phy cap., ret =  %s last_status =  %s\n",
   i40e_stat_str(hw, err),
   i40e_aq_str(hw, hw->aq.asq_last_status));
  return err;
 }




 if (is_up && abilities.phy_type != 0 && abilities.link_speed != 0)
  return I40E_SUCCESS;





 mask = I40E_PHY_TYPES_BITMASK;
 config.phy_type = is_up ? cpu_to_le32((u32)(mask & 0xffffffff)) : 0;
 config.phy_type_ext = is_up ? (u8)((mask >> 32) & 0xff) : 0;

 config.abilities = abilities.abilities;
 if (abilities.link_speed != 0)
  config.link_speed = abilities.link_speed;
 else
  config.link_speed = speed;
 config.eee_capability = abilities.eee_capability;
 config.eeer = abilities.eeer_val;
 config.low_power_ctrl = abilities.d3_lpan;
 config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
       I40E_AQ_PHY_FEC_CONFIG_MASK;
 err = i40e_aq_set_phy_config(hw, &config, ((void*)0));

 if (err) {
  dev_err(&pf->pdev->dev,
   "set phy config ret =  %s last_status =  %s\n",
   i40e_stat_str(&pf->hw, err),
   i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  return err;
 }


 err = i40e_update_link_info(hw);
 if (err) {




  msleep(1000);
  i40e_update_link_info(hw);
 }

 i40e_aq_set_link_restart_an(hw, 1, ((void*)0));

 return I40E_SUCCESS;
}

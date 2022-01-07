
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_pf {int flags; struct i40e_hw hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct i40e_aq_set_phy_config {int fec_cfg_curr_mod_ext_info; int fec_config; int d3_lpan; int low_power_ctrl; int eeer_val; int eeer; int eee_capability; int link_speed; int phy_type_ext; int abilities; int phy_type; } ;
struct i40e_aq_get_phy_abilities_resp {int fec_cfg_curr_mod_ext_info; int fec_config; int d3_lpan; int low_power_ctrl; int eeer_val; int eeer; int eee_capability; int link_speed; int phy_type_ext; int abilities; int phy_type; } ;
typedef scalar_t__ i40e_status ;
typedef int config ;
typedef int abilities ;
struct TYPE_3__ {struct i40e_pf* back; } ;


 int EAGAIN ;
 int I40E_AQ_PHY_FEC_CONFIG_MASK ;
 int READ_ONCE (int ) ;
 scalar_t__ i40e_aq_get_phy_capabilities (struct i40e_hw*,int,int,struct i40e_aq_set_phy_config*,int *) ;
 scalar_t__ i40e_aq_set_phy_config (struct i40e_hw*,struct i40e_aq_set_phy_config*,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_set_fec_in_flags (int,int *) ;
 int i40e_stat_str (struct i40e_hw*,scalar_t__) ;
 scalar_t__ i40e_update_link_info (struct i40e_hw*) ;
 int memset (struct i40e_aq_set_phy_config*,int ,int) ;
 int netdev_dbg (struct net_device*,char*,int ,int ) ;
 int netdev_info (struct net_device*,char*,int ,int ) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_set_fec_cfg(struct net_device *netdev, u8 fec_cfg)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_aq_get_phy_abilities_resp abilities;
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_hw *hw = &pf->hw;
 i40e_status status = 0;
 u32 flags = 0;
 int err = 0;

 flags = READ_ONCE(pf->flags);
 i40e_set_fec_in_flags(fec_cfg, &flags);


 memset(&abilities, 0, sizeof(abilities));
 status = i40e_aq_get_phy_capabilities(hw, 0, 0, &abilities,
           ((void*)0));
 if (status) {
  err = -EAGAIN;
  goto done;
 }

 if (abilities.fec_cfg_curr_mod_ext_info != fec_cfg) {
  struct i40e_aq_set_phy_config config;

  memset(&config, 0, sizeof(config));
  config.phy_type = abilities.phy_type;
  config.abilities = abilities.abilities;
  config.phy_type_ext = abilities.phy_type_ext;
  config.link_speed = abilities.link_speed;
  config.eee_capability = abilities.eee_capability;
  config.eeer = abilities.eeer_val;
  config.low_power_ctrl = abilities.d3_lpan;
  config.fec_config = fec_cfg & I40E_AQ_PHY_FEC_CONFIG_MASK;
  status = i40e_aq_set_phy_config(hw, &config, ((void*)0));
  if (status) {
   netdev_info(netdev,
        "Set phy config failed, err %s aq_err %s\n",
        i40e_stat_str(hw, status),
        i40e_aq_str(hw, hw->aq.asq_last_status));
   err = -EAGAIN;
   goto done;
  }
  pf->flags = flags;
  status = i40e_update_link_info(hw);
  if (status)




   netdev_dbg(netdev,
       "Updating link info failed with err %s aq_err %s\n",
       i40e_stat_str(hw, status),
       i40e_aq_str(hw, hw->aq.asq_last_status));
 }

done:
 return err;
}

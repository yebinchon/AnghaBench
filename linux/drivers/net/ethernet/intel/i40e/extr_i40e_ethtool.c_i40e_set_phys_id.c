
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct i40e_hw {int flags; } ;
struct i40e_pf {int hw_features; int led_status; int phy_led_val; struct i40e_hw hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
typedef scalar_t__ i40e_status ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_2__ {struct i40e_pf* back; } ;


 int ENOENT ;




 int I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE ;
 int I40E_HW_PHY_CONTROLS_LEDS ;
 int I40E_PHY_DEBUG_ALL ;
 int I40E_PHY_LED_MODE_ORIG ;
 int i40e_aq_set_phy_debug (struct i40e_hw*,int ,int *) ;
 int i40e_led_get (struct i40e_hw*) ;
 scalar_t__ i40e_led_get_phy (struct i40e_hw*,int*,int*) ;
 int i40e_led_set (struct i40e_hw*,int,int) ;
 scalar_t__ i40e_led_set_phy (struct i40e_hw*,int,int,int) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_set_phys_id(struct net_device *netdev,
       enum ethtool_phys_id_state state)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 i40e_status ret = 0;
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_hw *hw = &pf->hw;
 int blink_freq = 2;
 u16 temp_status;

 switch (state) {
 case 131:
  if (!(pf->hw_features & I40E_HW_PHY_CONTROLS_LEDS)) {
   pf->led_status = i40e_led_get(hw);
  } else {
   if (!(hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE))
    i40e_aq_set_phy_debug(hw, I40E_PHY_DEBUG_ALL,
            ((void*)0));
   ret = i40e_led_get_phy(hw, &temp_status,
            &pf->phy_led_val);
   pf->led_status = temp_status;
  }
  return blink_freq;
 case 128:
  if (!(pf->hw_features & I40E_HW_PHY_CONTROLS_LEDS))
   i40e_led_set(hw, 0xf, 0);
  else
   ret = i40e_led_set_phy(hw, 1, pf->led_status, 0);
  break;
 case 129:
  if (!(pf->hw_features & I40E_HW_PHY_CONTROLS_LEDS))
   i40e_led_set(hw, 0x0, 0);
  else
   ret = i40e_led_set_phy(hw, 0, pf->led_status, 0);
  break;
 case 130:
  if (!(pf->hw_features & I40E_HW_PHY_CONTROLS_LEDS)) {
   i40e_led_set(hw, pf->led_status, 0);
  } else {
   ret = i40e_led_set_phy(hw, 0, pf->led_status,
            (pf->phy_led_val |
            I40E_PHY_LED_MODE_ORIG));
   if (!(hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE))
    i40e_aq_set_phy_debug(hw, 0, ((void*)0));
  }
  break;
 default:
  break;
 }
 if (ret)
  return -ENOENT;
 else
  return 0;
}

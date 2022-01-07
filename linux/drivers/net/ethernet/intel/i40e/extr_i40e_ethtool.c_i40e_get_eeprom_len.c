
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct i40e_netdev_priv {TYPE_2__* vsi; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_3__ mac; } ;
struct TYPE_5__ {TYPE_1__* back; } ;
struct TYPE_4__ {struct i40e_hw hw; } ;


 int BIT (int) ;
 int I40E_GLPCI_LBARCTRL ;
 int I40E_GLPCI_LBARCTRL_FL_SIZE_MASK ;
 int I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT ;
 scalar_t__ I40E_MAC_X722 ;
 int X722_EEPROM_SCOPE_LIMIT ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static int i40e_get_eeprom_len(struct net_device *netdev)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_hw *hw = &np->vsi->back->hw;
 u32 val;


 if (hw->mac.type == I40E_MAC_X722) {
  val = 0x5B9FFF + 1;
  return val;
 }
 val = (rd32(hw, I40E_GLPCI_LBARCTRL)
  & I40E_GLPCI_LBARCTRL_FL_SIZE_MASK)
  >> I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT;

 val = (64 * 1024) * BIT(val);
 return val;
}

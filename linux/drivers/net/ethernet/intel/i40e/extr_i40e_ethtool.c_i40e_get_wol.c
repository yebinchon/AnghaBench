
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct i40e_hw {int partition_id; int port; } ;
struct i40e_pf {scalar_t__ wol_en; struct i40e_hw hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_wolinfo {void* wolopts; void* supported; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;


 int BIT (int ) ;
 int I40E_SR_NVM_WAKE_ON_LAN ;
 void* WAKE_MAGIC ;
 int i40e_read_nvm_word (struct i40e_hw*,int ,int*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void i40e_get_wol(struct net_device *netdev,
    struct ethtool_wolinfo *wol)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_hw *hw = &pf->hw;
 u16 wol_nvm_bits;


 i40e_read_nvm_word(hw, I40E_SR_NVM_WAKE_ON_LAN, &wol_nvm_bits);
 if ((BIT(hw->port) & wol_nvm_bits) || (hw->partition_id != 1)) {
  wol->supported = 0;
  wol->wolopts = 0;
 } else {
  wol->supported = WAKE_MAGIC;
  wol->wolopts = (pf->wol_en ? WAKE_MAGIC : 0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int asq_last_status; } ;
struct TYPE_8__ {int link_info; } ;
struct TYPE_7__ {TYPE_4__ link_info; } ;
struct i40e_hw {TYPE_1__ aq; TYPE_3__ phy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
struct i40e_netdev_priv {TYPE_2__* vsi; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_6__ {struct i40e_pf* back; } ;


 int EIO ;
 int I40E_AQ_LINK_UP ;
 scalar_t__ i40e_aq_set_link_restart_an (struct i40e_hw*,int,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_stat_str (struct i40e_hw*,scalar_t__) ;
 int netdev_info (struct net_device*,char*,int ,int ) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_nway_reset(struct net_device *netdev)
{

 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_hw *hw = &pf->hw;
 bool link_up = hw->phy.link_info.link_info & I40E_AQ_LINK_UP;
 i40e_status ret = 0;

 ret = i40e_aq_set_link_restart_an(hw, link_up, ((void*)0));
 if (ret) {
  netdev_info(netdev, "link restart failed, err %s aq_err %s\n",
       i40e_stat_str(hw, ret),
       i40e_aq_str(hw, hw->aq.asq_last_status));
  return -EIO;
 }

 return 0;
}

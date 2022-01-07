
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {struct ice_hw hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_regs {int version; } ;
struct TYPE_2__ {struct ice_pf* back; } ;


 int ARRAY_SIZE (int *) ;
 int * ice_regs_dump_list ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int rd32 (struct ice_hw*,int ) ;

__attribute__((used)) static void
ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;
 struct ice_hw *hw = &pf->hw;
 u32 *regs_buf = (u32 *)p;
 int i;

 regs->version = 1;

 for (i = 0; i < ARRAY_SIZE(ice_regs_dump_list); ++i)
  regs_buf[i] = rd32(hw, ice_regs_dump_list[i]);
}

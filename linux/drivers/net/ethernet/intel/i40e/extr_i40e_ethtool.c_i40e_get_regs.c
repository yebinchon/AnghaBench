
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_regs {int version; } ;
struct TYPE_4__ {scalar_t__ offset; unsigned int elements; unsigned int stride; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;


 TYPE_2__* i40e_reg_list ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ rd32 (struct i40e_hw*,scalar_t__) ;

__attribute__((used)) static void i40e_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
     void *p)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_hw *hw = &pf->hw;
 u32 *reg_buf = p;
 unsigned int i, j, ri;
 u32 reg;
 regs->version = 1;


 ri = 0;
 for (i = 0; i40e_reg_list[i].offset != 0; i++) {
  for (j = 0; j < i40e_reg_list[i].elements; j++) {
   reg = i40e_reg_list[i].offset
    + (j * i40e_reg_list[i].stride);
   reg_buf[ri++] = rd32(hw, reg);
  }
 }

}

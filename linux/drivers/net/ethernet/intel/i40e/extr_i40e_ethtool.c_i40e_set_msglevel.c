
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int debug_mask; } ;
struct i40e_pf {int msg_enable; TYPE_2__ hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;


 int I40E_DEBUG_USER ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void i40e_set_msglevel(struct net_device *netdev, u32 data)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;

 if (I40E_DEBUG_USER & data)
  pf->hw.debug_mask = data;
 else
  pf->msg_enable = data;
}

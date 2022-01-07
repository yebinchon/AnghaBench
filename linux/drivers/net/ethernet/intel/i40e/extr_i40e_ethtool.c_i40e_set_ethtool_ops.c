
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * ethtool_ops; } ;
struct i40e_pf {int state; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;


 int __I40E_RECOVERY_MODE ;
 int i40e_ethtool_ops ;
 int i40e_ethtool_recovery_mode_ops ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

void i40e_set_ethtool_ops(struct net_device *netdev)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;

 if (!test_bit(__I40E_RECOVERY_MODE, pf->state))
  netdev->ethtool_ops = &i40e_ethtool_ops;
 else
  netdev->ethtool_ops = &i40e_ethtool_recovery_mode_ops;
}

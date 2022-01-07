
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct i40e_pf {int hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;


 int hw ;
 int i40e_diag_reg_test (int *) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_info (struct i40e_pf*,int ,struct net_device*,char*) ;

__attribute__((used)) static u64 i40e_reg_test(struct net_device *netdev, u64 *data)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;

 netif_info(pf, hw, netdev, "register test\n");
 *data = i40e_diag_reg_test(&pf->hw);

 return *data;
}

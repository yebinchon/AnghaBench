
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int nvmupd_state; } ;
struct i40e_pf {TYPE_2__ hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;


 int I40E_NVMUPD_STATE_INIT ;
 int hw ;
 int i40e_diag_eeprom_test (TYPE_2__*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_info (struct i40e_pf*,int ,struct net_device*,char*) ;

__attribute__((used)) static u64 i40e_eeprom_test(struct net_device *netdev, u64 *data)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;

 netif_info(pf, hw, netdev, "eeprom test\n");
 *data = i40e_diag_eeprom_test(&pf->hw);


 pf->hw.nvmupd_state = I40E_NVMUPD_STATE_INIT;

 return *data;
}

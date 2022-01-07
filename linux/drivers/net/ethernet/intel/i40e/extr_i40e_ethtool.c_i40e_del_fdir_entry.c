
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int state; } ;
struct ethtool_rxnfc {int fs; } ;
struct ethtool_rx_flow_spec {int location; } ;


 int EBUSY ;
 int __I40E_FD_FLUSH_REQUESTED ;
 int __I40E_RESET_INTR_RECEIVED ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int i40e_fdir_check_and_reenable (struct i40e_pf*) ;
 int i40e_prune_flex_pit_list (struct i40e_pf*) ;
 int i40e_update_ethtool_fdir_entry (struct i40e_vsi*,int *,int ,struct ethtool_rxnfc*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int i40e_del_fdir_entry(struct i40e_vsi *vsi,
          struct ethtool_rxnfc *cmd)
{
 struct ethtool_rx_flow_spec *fsp =
  (struct ethtool_rx_flow_spec *)&cmd->fs;
 struct i40e_pf *pf = vsi->back;
 int ret = 0;

 if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
     test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
  return -EBUSY;

 if (test_bit(__I40E_FD_FLUSH_REQUESTED, pf->state))
  return -EBUSY;

 ret = i40e_update_ethtool_fdir_entry(vsi, ((void*)0), fsp->location, cmd);

 i40e_prune_flex_pit_list(pf);

 i40e_fdir_check_and_reenable(pf);
 return ret;
}

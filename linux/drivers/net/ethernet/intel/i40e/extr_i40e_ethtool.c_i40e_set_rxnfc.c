
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;



 int i40e_add_fdir_ethtool (struct i40e_vsi*,struct ethtool_rxnfc*) ;
 int i40e_del_fdir_entry (struct i40e_vsi*,struct ethtool_rxnfc*) ;
 int i40e_set_rss_hash_opt (struct i40e_pf*,struct ethtool_rxnfc*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  ret = i40e_set_rss_hash_opt(pf, cmd);
  break;
 case 129:
  ret = i40e_add_fdir_ethtool(vsi, cmd);
  break;
 case 130:
  ret = i40e_del_fdir_entry(vsi, cmd);
  break;
 default:
  break;
 }

 return ret;
}

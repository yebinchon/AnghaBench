
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct i40e_vsi {int rss_size; struct i40e_pf* back; } ;
struct i40e_pf {int fdir_pf_active_filters; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct ethtool_rxnfc {int cmd; int data; int rule_cnt; } ;


 int EOPNOTSUPP ;





 int i40e_get_ethtool_fdir_all (struct i40e_pf*,struct ethtool_rxnfc*,int *) ;
 int i40e_get_ethtool_fdir_entry (struct i40e_pf*,struct ethtool_rxnfc*) ;
 int i40e_get_fd_cnt_all (struct i40e_pf*) ;
 int i40e_get_rss_hash_opts (struct i40e_pf*,struct ethtool_rxnfc*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
     u32 *rule_locs)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  cmd->data = vsi->rss_size;
  ret = 0;
  break;
 case 129:
  ret = i40e_get_rss_hash_opts(pf, cmd);
  break;
 case 131:
  cmd->rule_cnt = pf->fdir_pf_active_filters;

  cmd->data = i40e_get_fd_cnt_all(pf);
  ret = 0;
  break;
 case 130:
  ret = i40e_get_ethtool_fdir_entry(pf, cmd);
  break;
 case 132:
  ret = i40e_get_ethtool_fdir_all(pf, cmd, rule_locs);
  break;
 default:
  break;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int vecs; } ;


 int EOPNOTSUPP ;




 int aq_get_rxnfc_all_rules (struct aq_nic_s*,struct ethtool_rxnfc*,int *) ;
 int aq_get_rxnfc_count_all_rules (struct aq_nic_s*) ;
 int aq_get_rxnfc_rule (struct aq_nic_s*,struct ethtool_rxnfc*) ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ethtool_get_rxnfc(struct net_device *ndev,
    struct ethtool_rxnfc *cmd,
    u32 *rule_locs)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *cfg = aq_nic_get_cfg(aq_nic);
 int err = 0;

 switch (cmd->cmd) {
 case 128:
  cmd->data = cfg->vecs;
  break;
 case 130:
  cmd->rule_cnt = aq_get_rxnfc_count_all_rules(aq_nic);
  break;
 case 129:
  err = aq_get_rxnfc_rule(aq_nic, cmd);
  break;
 case 131:
  err = aq_get_rxnfc_all_rules(aq_nic, cmd, rule_locs);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}

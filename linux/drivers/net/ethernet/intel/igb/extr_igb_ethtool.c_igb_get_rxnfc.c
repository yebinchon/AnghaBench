
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct igb_adapter {int nfc_filter_count; int num_rx_queues; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;


 int EOPNOTSUPP ;





 int igb_get_ethtool_nfc_all (struct igb_adapter*,struct ethtool_rxnfc*,int *) ;
 int igb_get_ethtool_nfc_entry (struct igb_adapter*,struct ethtool_rxnfc*) ;
 int igb_get_rss_hash_opts (struct igb_adapter*,struct ethtool_rxnfc*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
    u32 *rule_locs)
{
 struct igb_adapter *adapter = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  cmd->data = adapter->num_rx_queues;
  ret = 0;
  break;
 case 131:
  cmd->rule_cnt = adapter->nfc_filter_count;
  ret = 0;
  break;
 case 130:
  ret = igb_get_ethtool_nfc_entry(adapter, cmd);
  break;
 case 132:
  ret = igb_get_ethtool_nfc_all(adapter, cmd, rule_locs);
  break;
 case 129:
  ret = igb_get_rss_hash_opts(adapter, cmd);
  break;
 default:
  break;
 }

 return ret;
}

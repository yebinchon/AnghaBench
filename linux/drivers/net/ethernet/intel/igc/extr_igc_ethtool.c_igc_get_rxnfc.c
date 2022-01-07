
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct igc_adapter {int nfc_filter_count; int num_rx_queues; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;


 int EOPNOTSUPP ;





 int igc_get_ethtool_nfc_all (struct igc_adapter*,struct ethtool_rxnfc*,int *) ;
 int igc_get_ethtool_nfc_entry (struct igc_adapter*,struct ethtool_rxnfc*) ;
 int igc_get_rss_hash_opts (struct igc_adapter*,struct ethtool_rxnfc*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igc_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
    u32 *rule_locs)
{
 struct igc_adapter *adapter = netdev_priv(dev);
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
  ret = igc_get_ethtool_nfc_entry(adapter, cmd);
  break;
 case 132:
  ret = igc_get_ethtool_nfc_all(adapter, cmd, rule_locs);
  break;
 case 129:
  ret = igc_get_rss_hash_opts(adapter, cmd);
  break;
 default:
  break;
 }

 return ret;
}

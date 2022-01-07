
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igc_adapter {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;



 int igc_add_ethtool_nfc_entry (struct igc_adapter*,struct ethtool_rxnfc*) ;
 int igc_del_ethtool_nfc_entry (struct igc_adapter*,struct ethtool_rxnfc*) ;
 int igc_set_rss_hash_opt (struct igc_adapter*,struct ethtool_rxnfc*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igc_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct igc_adapter *adapter = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  ret = igc_set_rss_hash_opt(adapter, cmd);
  break;
 case 129:
  ret = igc_add_ethtool_nfc_entry(adapter, cmd);
  break;
 case 130:
  ret = igc_del_ethtool_nfc_entry(adapter, cmd);
 default:
  break;
 }

 return ret;
}

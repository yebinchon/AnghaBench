
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int nfc_lock; } ;
struct ethtool_rxnfc {int fs; } ;
struct ethtool_rx_flow_spec {int location; } ;


 int igc_update_ethtool_nfc_entry (struct igc_adapter*,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int igc_del_ethtool_nfc_entry(struct igc_adapter *adapter,
         struct ethtool_rxnfc *cmd)
{
 struct ethtool_rx_flow_spec *fsp =
  (struct ethtool_rx_flow_spec *)&cmd->fs;
 int err;

 spin_lock(&adapter->nfc_lock);
 err = igc_update_ethtool_nfc_entry(adapter, ((void*)0), fsp->location);
 spin_unlock(&adapter->nfc_lock);

 return err;
}

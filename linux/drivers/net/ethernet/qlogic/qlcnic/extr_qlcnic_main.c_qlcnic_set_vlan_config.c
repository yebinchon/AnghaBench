
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_esw_func_cfg {scalar_t__ vlan_id; scalar_t__ discard_tagged; } ;
struct qlcnic_adapter {scalar_t__ tx_pvid; scalar_t__ rx_pvid; int flags; } ;


 int QLCNIC_TAGGING_ENABLED ;

void qlcnic_set_vlan_config(struct qlcnic_adapter *adapter,
       struct qlcnic_esw_func_cfg *esw_cfg)
{
 if (esw_cfg->discard_tagged)
  adapter->flags &= ~QLCNIC_TAGGING_ENABLED;
 else
  adapter->flags |= QLCNIC_TAGGING_ENABLED;

 if (esw_cfg->vlan_id) {
  adapter->rx_pvid = esw_cfg->vlan_id;
  adapter->tx_pvid = esw_cfg->vlan_id;
 } else {
  adapter->rx_pvid = 0;
  adapter->tx_pvid = 0;
 }
}

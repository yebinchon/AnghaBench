
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_esw_func_cfg {int promisc_mode; int mac_override; scalar_t__ mac_anti_spoof; } ;
struct qlcnic_adapter {int flags; } ;


 int QLCNIC_MACSPOOF ;
 int QLCNIC_MAC_OVERRIDE_DISABLED ;
 int QLCNIC_PROMISC_DISABLED ;

void qlcnic_set_eswitch_port_features(struct qlcnic_adapter *adapter,
          struct qlcnic_esw_func_cfg *esw_cfg)
{
 adapter->flags &= ~(QLCNIC_MACSPOOF | QLCNIC_MAC_OVERRIDE_DISABLED |
    QLCNIC_PROMISC_DISABLED);

 if (esw_cfg->mac_anti_spoof)
  adapter->flags |= QLCNIC_MACSPOOF;

 if (!esw_cfg->mac_override)
  adapter->flags |= QLCNIC_MAC_OVERRIDE_DISABLED;

 if (!esw_cfg->promisc_mode)
  adapter->flags |= QLCNIC_PROMISC_DISABLED;
}

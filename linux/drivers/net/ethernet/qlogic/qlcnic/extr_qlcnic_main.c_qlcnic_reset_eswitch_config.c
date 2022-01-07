
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_npar_info {int promisc_mode; int offload_flags; int mac_anti_spoof; int discard_tagged; int mac_override; int pvid; } ;
struct qlcnic_esw_func_cfg {int pci_func; int op_mode; int promisc_mode; int offload_flags; int mac_anti_spoof; int discard_tagged; int mac_override; int vlan_id; } ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int QLCNIC_ADD_VLAN ;
 int QLCNIC_PORT_DEFAULTS ;
 scalar_t__ qlcnic_config_switch_port (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ;

__attribute__((used)) static int
qlcnic_reset_eswitch_config(struct qlcnic_adapter *adapter,
   struct qlcnic_npar_info *npar, int pci_func)
{
 struct qlcnic_esw_func_cfg esw_cfg;
 esw_cfg.op_mode = QLCNIC_PORT_DEFAULTS;
 esw_cfg.pci_func = pci_func;
 esw_cfg.vlan_id = npar->pvid;
 esw_cfg.mac_override = npar->mac_override;
 esw_cfg.discard_tagged = npar->discard_tagged;
 esw_cfg.mac_anti_spoof = npar->mac_anti_spoof;
 esw_cfg.offload_flags = npar->offload_flags;
 esw_cfg.promisc_mode = npar->promisc_mode;
 if (qlcnic_config_switch_port(adapter, &esw_cfg))
  return -EIO;

 esw_cfg.op_mode = QLCNIC_ADD_VLAN;
 if (qlcnic_config_switch_port(adapter, &esw_cfg))
  return -EIO;

 return 0;
}

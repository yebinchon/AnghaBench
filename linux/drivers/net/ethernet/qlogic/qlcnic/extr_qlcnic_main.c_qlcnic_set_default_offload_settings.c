
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct qlcnic_npar_info {int offload_flags; void* promisc_mode; int discard_tagged; int mac_anti_spoof; void* mac_override; int pvid; int pci_func; int eswitch_status; } ;
struct qlcnic_esw_func_cfg {int offload_flags; void* promisc_mode; int discard_tagged; int mac_anti_spoof; void* mac_override; int vlan_id; int pci_func; } ;
struct qlcnic_adapter {struct qlcnic_npar_info* npars; TYPE_1__* ahw; scalar_t__ need_fw_reset; } ;
struct TYPE_2__ {size_t total_nic_func; } ;


 void* BIT_0 ;
 int BIT_1 ;
 int BIT_2 ;
 int EIO ;
 scalar_t__ QLCNIC_IS_TSO_CAPABLE (struct qlcnic_adapter*) ;
 int memset (struct qlcnic_esw_func_cfg*,int ,int) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_config_switch_port (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ;

int qlcnic_set_default_offload_settings(struct qlcnic_adapter *adapter)
{
 struct qlcnic_esw_func_cfg esw_cfg;
 struct qlcnic_npar_info *npar;
 u8 i;

 if (adapter->need_fw_reset)
  return 0;

 for (i = 0; i < adapter->ahw->total_nic_func; i++) {
  if (!adapter->npars[i].eswitch_status)
   continue;

  memset(&esw_cfg, 0, sizeof(struct qlcnic_esw_func_cfg));
  esw_cfg.pci_func = adapter->npars[i].pci_func;
  esw_cfg.mac_override = BIT_0;
  esw_cfg.promisc_mode = BIT_0;
  if (qlcnic_82xx_check(adapter)) {
   esw_cfg.offload_flags = BIT_0;
   if (QLCNIC_IS_TSO_CAPABLE(adapter))
    esw_cfg.offload_flags |= (BIT_1 | BIT_2);
  }
  if (qlcnic_config_switch_port(adapter, &esw_cfg))
   return -EIO;
  npar = &adapter->npars[i];
  npar->pvid = esw_cfg.vlan_id;
  npar->mac_override = esw_cfg.mac_override;
  npar->mac_anti_spoof = esw_cfg.mac_anti_spoof;
  npar->discard_tagged = esw_cfg.discard_tagged;
  npar->promisc_mode = esw_cfg.promisc_mode;
  npar->offload_flags = esw_cfg.offload_flags;
 }

 return 0;
}

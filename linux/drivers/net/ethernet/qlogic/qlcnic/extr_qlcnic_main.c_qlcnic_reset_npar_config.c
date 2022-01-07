
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_npar_info {int dest_npar; scalar_t__ enable_pm; int max_bw; int min_bw; int eswitch_status; int pci_func; } ;
struct qlcnic_info {int max_tx_bw; int min_tx_bw; } ;
struct qlcnic_adapter {struct qlcnic_npar_info* npars; TYPE_1__* ahw; int need_fw_reset; } ;
struct TYPE_2__ {int total_nic_func; } ;


 int memset (struct qlcnic_info*,int ,int) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_config_port_mirroring (struct qlcnic_adapter*,int ,int,int ) ;
 int qlcnic_get_nic_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;
 int qlcnic_reset_eswitch_config (struct qlcnic_adapter*,struct qlcnic_npar_info*,int ) ;
 int qlcnic_set_nic_info (struct qlcnic_adapter*,struct qlcnic_info*) ;

int qlcnic_reset_npar_config(struct qlcnic_adapter *adapter)
{
 int i, err;
 struct qlcnic_npar_info *npar;
 struct qlcnic_info nic_info;
 u8 pci_func;

 if (qlcnic_82xx_check(adapter))
  if (!adapter->need_fw_reset)
   return 0;


 for (i = 0; i < adapter->ahw->total_nic_func; i++) {
  npar = &adapter->npars[i];
  pci_func = npar->pci_func;
  if (!adapter->npars[i].eswitch_status)
   continue;

  memset(&nic_info, 0, sizeof(struct qlcnic_info));
  err = qlcnic_get_nic_info(adapter, &nic_info, pci_func);
  if (err)
   return err;
  nic_info.min_tx_bw = npar->min_bw;
  nic_info.max_tx_bw = npar->max_bw;
  err = qlcnic_set_nic_info(adapter, &nic_info);
  if (err)
   return err;

  if (npar->enable_pm) {
   err = qlcnic_config_port_mirroring(adapter,
          npar->dest_npar, 1,
          pci_func);
   if (err)
    return err;
  }
  err = qlcnic_reset_eswitch_config(adapter, npar, pci_func);
  if (err)
   return err;
 }
 return 0;
}

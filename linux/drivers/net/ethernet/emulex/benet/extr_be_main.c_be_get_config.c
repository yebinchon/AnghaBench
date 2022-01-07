
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct be_adapter {TYPE_1__* pdev; int wol_en; int msg_enable; int fat_dump_len; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int FW_LOG_LEVEL_DEFAULT ;
 int NETIF_MSG_HW ;
 int PCI_D3cold ;
 int PCI_D3hot ;
 int be_cmd_get_acpi_wol_cap (struct be_adapter*) ;
 int be_cmd_get_active_profile (struct be_adapter*,int *) ;
 int be_cmd_get_cntl_attributes (struct be_adapter*) ;
 int be_cmd_get_fat_dump_len (struct be_adapter*,int *) ;
 int be_cmd_get_fw_log_level (struct be_adapter*) ;
 int be_cmd_query_fw_cfg (struct be_adapter*) ;
 int be_cmd_query_port_name (struct be_adapter*) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int dev_info (int *,char*,int ) ;
 int lancer_chip (struct be_adapter*) ;
 int pci_enable_wake (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int be_get_config(struct be_adapter *adapter)
{
 int status, level;
 u16 profile_id;

 status = be_cmd_get_cntl_attributes(adapter);
 if (status)
  return status;

 status = be_cmd_query_fw_cfg(adapter);
 if (status)
  return status;

 if (!lancer_chip(adapter) && be_physfn(adapter))
  be_cmd_get_fat_dump_len(adapter, &adapter->fat_dump_len);

 if (BEx_chip(adapter)) {
  level = be_cmd_get_fw_log_level(adapter);
  adapter->msg_enable =
   level <= FW_LOG_LEVEL_DEFAULT ? NETIF_MSG_HW : 0;
 }

 be_cmd_get_acpi_wol_cap(adapter);
 pci_enable_wake(adapter->pdev, PCI_D3hot, adapter->wol_en);
 pci_enable_wake(adapter->pdev, PCI_D3cold, adapter->wol_en);

 be_cmd_query_port_name(adapter);

 if (be_physfn(adapter)) {
  status = be_cmd_get_active_profile(adapter, &profile_id);
  if (!status)
   dev_info(&adapter->pdev->dev,
     "Using profile 0x%x\n", profile_id);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_pci_info {int dummy; } ;
struct qlcnic_hardware_context {int port_type; scalar_t__ op_mode; int max_vnic_func; int total_nic_func; } ;
struct qlcnic_adapter {int flags; struct qlcnic_hardware_context* ahw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QLCNIC_ESWITCH_ENABLED ;

 scalar_t__ QLCNIC_MGMT_FUNC ;
 int QLCNIC_NIU_MAX_GBE_PORTS ;
 int QLCNIC_NIU_MAX_XG_PORTS ;

 struct qlcnic_pci_info* kcalloc (int ,int,int ) ;
 int kfree (struct qlcnic_pci_info*) ;
 int qlcnic_get_pci_info (struct qlcnic_adapter*,struct qlcnic_pci_info*) ;

__attribute__((used)) static int qlcnic_get_act_pci_func(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_pci_info *pci_info;
 int ret;

 if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED)) {
  switch (ahw->port_type) {
  case 129:
   ahw->total_nic_func = QLCNIC_NIU_MAX_GBE_PORTS;
   break;
  case 128:
   ahw->total_nic_func = QLCNIC_NIU_MAX_XG_PORTS;
   break;
  }
  return 0;
 }

 if (ahw->op_mode == QLCNIC_MGMT_FUNC)
  return 0;

 pci_info = kcalloc(ahw->max_vnic_func, sizeof(*pci_info), GFP_KERNEL);
 if (!pci_info)
  return -ENOMEM;

 ret = qlcnic_get_pci_info(adapter, pci_info);
 kfree(pci_info);
 return ret;
}

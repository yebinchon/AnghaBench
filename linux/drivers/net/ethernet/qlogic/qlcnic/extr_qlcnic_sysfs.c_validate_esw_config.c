
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qlcnic_hardware_context {scalar_t__ max_vnic_func; scalar_t__ op_mode; scalar_t__ pci_base0; } ;
struct qlcnic_esw_func_cfg {scalar_t__ pci_func; int op_mode; int mac_override; int promisc_mode; int op_type; int vlan_id; int mac_anti_spoof; int offload_flags; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int EINVAL ;
 int IS_VALID_VLAN (int ) ;


 scalar_t__ QLCNIC_DRV_OP_MODE ;
 scalar_t__ QLCNIC_MGMT_FUNC ;
 int QLCNIC_NON_PRIV_FUNC ;

 int QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int QLC_83XX_DRV_OP_MODE ;
 int QLC_83XX_GET_FUNC_PRIVILEGE (int ,scalar_t__) ;
 int QLC_DEV_GET_DRV (int ,scalar_t__) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_is_valid_nic_func (struct qlcnic_adapter*,scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int validate_esw_config(struct qlcnic_adapter *adapter,
          struct qlcnic_esw_func_cfg *esw_cfg, int count)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int i, ret;
 u32 op_mode;
 u8 pci_func;

 if (qlcnic_82xx_check(adapter))
  op_mode = readl(ahw->pci_base0 + QLCNIC_DRV_OP_MODE);
 else
  op_mode = QLCRDX(ahw, QLC_83XX_DRV_OP_MODE);

 for (i = 0; i < count; i++) {
  pci_func = esw_cfg[i].pci_func;
  if (pci_func >= ahw->max_vnic_func)
   return -EINVAL;

  if (adapter->ahw->op_mode == QLCNIC_MGMT_FUNC)
   if (qlcnic_is_valid_nic_func(adapter, pci_func) < 0)
    return -EINVAL;

  switch (esw_cfg[i].op_mode) {
  case 128:
   if (qlcnic_82xx_check(adapter)) {
    ret = QLC_DEV_GET_DRV(op_mode, pci_func);
   } else {
    ret = QLC_83XX_GET_FUNC_PRIVILEGE(op_mode,
          pci_func);
    esw_cfg[i].offload_flags = 0;
   }

   if (ret != QLCNIC_NON_PRIV_FUNC) {
    if (esw_cfg[i].mac_anti_spoof != 0)
     return -EINVAL;
    if (esw_cfg[i].mac_override != 1)
     return -EINVAL;
    if (esw_cfg[i].promisc_mode != 1)
     return -EINVAL;
   }
   break;
  case 130:
   if (!IS_VALID_VLAN(esw_cfg[i].vlan_id))
    return -EINVAL;
   if (!esw_cfg[i].op_type)
    return -EINVAL;
   break;
  case 129:
   if (!esw_cfg[i].op_type)
    return -EINVAL;
   break;
  default:
   return -EINVAL;
  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_hardware_context {int pci_func; } ;
struct qlcnic_adapter {int flags; struct qlcnic_hardware_context* ahw; } ;


 int QLCNIC_CRB_DRV_ACTIVE ;
 int QLCNIC_CRB_DRV_STATE ;
 int QLCNIC_FW_RESET_OWNER ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static int
qlcnic_check_drv_state(struct qlcnic_adapter *adapter)
{
 int act, state, active_mask;
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 state = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_STATE);
 act = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_ACTIVE);

 if (adapter->flags & QLCNIC_FW_RESET_OWNER) {
  active_mask = (~(1 << (ahw->pci_func * 4)));
  act = act & active_mask;
 }

 if (((state & 0x11111111) == (act & 0x11111111)) ||
   ((act & 0x11111111) == ((state >> 1) & 0x11111111)))
  return 0;
 else
  return 1;
}

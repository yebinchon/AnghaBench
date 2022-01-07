
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_fw_dump {scalar_t__ enable; } ;
struct qlcnic_hardware_context {scalar_t__ reset_context; struct qlcnic_fw_dump fw_dump; } ;
struct qlcnic_adapter {int need_fw_reset; scalar_t__ heartbeat; scalar_t__ fw_fail_cnt; int flags; int state; scalar_t__ dev_state; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int dev; } ;


 int DRV ;
 scalar_t__ FW_FAIL_THRESH ;
 int QLCDB (struct qlcnic_adapter*,int ,char*) ;
 int QLCNIC_CRB_DEV_STATE ;
 scalar_t__ QLCNIC_CRB_PEG_NET_0 ;
 scalar_t__ QLCNIC_CRB_PEG_NET_1 ;
 scalar_t__ QLCNIC_CRB_PEG_NET_2 ;
 scalar_t__ QLCNIC_CRB_PEG_NET_3 ;
 scalar_t__ QLCNIC_CRB_PEG_NET_4 ;
 scalar_t__ QLCNIC_DEV_NEED_QUISCENT ;
 scalar_t__ QLCNIC_DEV_NEED_RESET ;
 int QLCNIC_FWERROR_CODE (scalar_t__) ;
 int QLCNIC_FW_HANG ;
 int QLCNIC_FW_RESET_OWNER ;
 int QLCNIC_PEG_ALIVE_COUNTER ;
 int QLCNIC_PEG_HALT_STATUS1 ;
 int QLCNIC_PEG_HALT_STATUS2 ;
 int QLCRD32 (struct qlcnic_adapter*,scalar_t__,int*) ;
 scalar_t__ QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int __QLCNIC_FW_ATTACHED ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,...) ;
 scalar_t__ qlcnic_auto_fw_reset ;
 scalar_t__ qlcnic_check_temp (struct qlcnic_adapter*) ;
 int qlcnic_detach_work ;
 int qlcnic_dev_request_reset (struct qlcnic_adapter*,int ) ;
 int qlcnic_dump_fw (struct qlcnic_adapter*) ;
 int qlcnic_reset_hw_context (struct qlcnic_adapter*) ;
 int qlcnic_schedule_work (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_set_npar_non_operational (struct qlcnic_adapter*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
qlcnic_check_health(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_fw_dump *fw_dump = &ahw->fw_dump;
 u32 state = 0, heartbeat;
 u32 peg_status;
 int err = 0;

 if (qlcnic_check_temp(adapter))
  goto detach;

 if (adapter->need_fw_reset)
  qlcnic_dev_request_reset(adapter, 0);

 state = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DEV_STATE);
 if (state == QLCNIC_DEV_NEED_RESET) {
  qlcnic_set_npar_non_operational(adapter);
  adapter->need_fw_reset = 1;
 } else if (state == QLCNIC_DEV_NEED_QUISCENT)
  goto detach;

 heartbeat = QLC_SHARED_REG_RD32(adapter, QLCNIC_PEG_ALIVE_COUNTER);
 if (heartbeat != adapter->heartbeat) {
  adapter->heartbeat = heartbeat;
  adapter->fw_fail_cnt = 0;
  if (adapter->need_fw_reset)
   goto detach;

  if (ahw->reset_context && qlcnic_auto_fw_reset)
   qlcnic_reset_hw_context(adapter);

  return 0;
 }

 if (++adapter->fw_fail_cnt < FW_FAIL_THRESH)
  return 0;

 adapter->flags |= QLCNIC_FW_HANG;

 qlcnic_dev_request_reset(adapter, 0);

 if (qlcnic_auto_fw_reset)
  clear_bit(__QLCNIC_FW_ATTACHED, &adapter->state);

 dev_err(&adapter->pdev->dev, "firmware hang detected\n");
 peg_status = QLC_SHARED_REG_RD32(adapter, QLCNIC_PEG_HALT_STATUS1);
 dev_err(&adapter->pdev->dev, "Dumping hw/fw registers\n"
   "PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\n"
   "PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\n"
   "PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\n"
   "PEG_NET_4_PC: 0x%x\n",
   peg_status,
   QLC_SHARED_REG_RD32(adapter, QLCNIC_PEG_HALT_STATUS2),
   QLCRD32(adapter, QLCNIC_CRB_PEG_NET_0 + 0x3c, &err),
   QLCRD32(adapter, QLCNIC_CRB_PEG_NET_1 + 0x3c, &err),
   QLCRD32(adapter, QLCNIC_CRB_PEG_NET_2 + 0x3c, &err),
   QLCRD32(adapter, QLCNIC_CRB_PEG_NET_3 + 0x3c, &err),
   QLCRD32(adapter, QLCNIC_CRB_PEG_NET_4 + 0x3c, &err));
 if (QLCNIC_FWERROR_CODE(peg_status) == 0x67)
  dev_err(&adapter->pdev->dev,
   "Firmware aborted with error code 0x00006700. "
    "Device is being reset.\n");
detach:
 adapter->dev_state = (state == QLCNIC_DEV_NEED_QUISCENT) ? state :
  QLCNIC_DEV_NEED_RESET;

 if (qlcnic_auto_fw_reset && !test_and_set_bit(__QLCNIC_RESETTING,
            &adapter->state)) {

  qlcnic_schedule_work(adapter, qlcnic_detach_work, 0);
  QLCDB(adapter, DRV, "fw recovery scheduled.\n");
 } else if (!qlcnic_auto_fw_reset && fw_dump->enable &&
     adapter->flags & QLCNIC_FW_RESET_OWNER) {
  qlcnic_dump_fw(adapter);
 }

 return 1;
}

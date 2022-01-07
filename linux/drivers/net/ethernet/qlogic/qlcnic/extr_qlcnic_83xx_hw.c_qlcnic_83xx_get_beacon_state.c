
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qlcnic_hardware_context {int beacon_state; } ;
struct TYPE_2__ {scalar_t__* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {int netdev; struct qlcnic_hardware_context* ahw; } ;


 scalar_t__ QLCNIC_BEACON_DISABLE ;
 int QLCNIC_CMD_GET_LED_CONFIG ;
 int QLC_83XX_BEACON_OFF ;
 int QLC_83XX_BEACON_ON ;
 scalar_t__ QLC_83XX_ENABLE_BEACON ;
 int netdev_err (int ,char*,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static void qlcnic_83xx_get_beacon_state(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_cmd_args cmd;
 u8 beacon_state;
 int err = 0;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_LED_CONFIG);
 if (!err) {
  err = qlcnic_issue_cmd(adapter, &cmd);
  if (!err) {
   beacon_state = cmd.rsp.arg[4];
   if (beacon_state == QLCNIC_BEACON_DISABLE)
    ahw->beacon_state = QLC_83XX_BEACON_OFF;
   else if (beacon_state == QLC_83XX_ENABLE_BEACON)
    ahw->beacon_state = QLC_83XX_BEACON_ON;
  }
 } else {
  netdev_err(adapter->netdev, "Get beacon state failed, err=%d\n",
      err);
 }

 qlcnic_free_mbx_args(&cmd);

 return;
}

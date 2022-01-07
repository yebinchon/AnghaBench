
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qlcnic_bc_trans {int trans_state; TYPE_1__* vf; } ;
struct qlcnic_adapter {scalar_t__ fw_fail_cnt; int ahw; } ;
struct TYPE_2__ {int state; } ;


 int EIO ;
 scalar_t__ QLCRDX (int ,int ) ;
 scalar_t__ QLC_83XX_IDC_DEV_READY ;
 int QLC_83XX_IDC_DEV_STATE ;
 scalar_t__ QLC_BC_CMD_MAX_RETRY_CNT ;
 int QLC_BC_VF_CHANNEL ;
 int QLC_INIT ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;

__attribute__((used)) static int qlcnic_sriov_retry_bc_cmd(struct qlcnic_adapter *adapter,
         struct qlcnic_bc_trans *trans)
{
 u8 max = QLC_BC_CMD_MAX_RETRY_CNT;
 u32 state;

 state = QLCRDX(adapter->ahw, QLC_83XX_IDC_DEV_STATE);
 if (state == QLC_83XX_IDC_DEV_READY) {
  msleep(20);
  clear_bit(QLC_BC_VF_CHANNEL, &trans->vf->state);
  trans->trans_state = QLC_INIT;
  if (++adapter->fw_fail_cnt > max)
   return -EIO;
  else
   return 0;
 }

 return -EIO;
}

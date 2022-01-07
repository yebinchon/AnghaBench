
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_mailbox {int status; } ;
struct TYPE_2__ {int collect_dump; } ;
struct qlcnic_hardware_context {TYPE_1__ idc; struct qlcnic_mailbox* mailbox; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int EBUSY ;
 int EIO ;
 int QLCNIC_HOST_MBX_CTRL ;
 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int QLC_83XX_MBX_READY ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_83xx_check_mbx_status(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_mailbox *mbx = ahw->mailbox;
 u32 host_mbx_ctrl;

 if (!test_bit(QLC_83XX_MBX_READY, &mbx->status))
  return -EBUSY;

 host_mbx_ctrl = QLCRDX(ahw, QLCNIC_HOST_MBX_CTRL);
 if (host_mbx_ctrl) {
  clear_bit(QLC_83XX_MBX_READY, &mbx->status);
  ahw->idc.collect_dump = 1;
  return -EIO;
 }

 return 0;
}

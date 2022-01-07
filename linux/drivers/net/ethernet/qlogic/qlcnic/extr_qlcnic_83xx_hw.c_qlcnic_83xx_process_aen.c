
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_mailbox {int rsp_status; int aen_lock; } ;
struct qlcnic_hardware_context {struct qlcnic_mailbox* mailbox; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_MBX_ASYNC_EVENT ;
 int QLCNIC_MBX_FW (struct qlcnic_hardware_context*,int ) ;
 int QLCNIC_SET_OWNER ;
 int QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int QLC_83XX_MBX_RESPONSE_ARRIVED ;
 int __qlcnic_83xx_process_aen (struct qlcnic_adapter*) ;
 int qlcnic_83xx_notify_mbx_response (struct qlcnic_mailbox*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qlcnic_83xx_process_aen(struct qlcnic_adapter *adapter)
{
 u32 resp, event, rsp_status = QLC_83XX_MBX_RESPONSE_ARRIVED;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_mailbox *mbx = ahw->mailbox;
 unsigned long flags;

 spin_lock_irqsave(&mbx->aen_lock, flags);
 resp = QLCRDX(ahw, QLCNIC_FW_MBX_CTRL);
 if (resp & QLCNIC_SET_OWNER) {
  event = readl(QLCNIC_MBX_FW(ahw, 0));
  if (event & QLCNIC_MBX_ASYNC_EVENT) {
   __qlcnic_83xx_process_aen(adapter);
  } else {
   if (mbx->rsp_status != rsp_status)
    qlcnic_83xx_notify_mbx_response(mbx);
  }
 }
 spin_unlock_irqrestore(&mbx->aen_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_mailbox {int rsp_status; int aen_lock; } ;
struct TYPE_4__ {int mbx_spurious_intr; } ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__ stats; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {int pci_base0; struct qlcnic_mailbox* mailbox; } ;


 int IRQ_HANDLED ;
 int QLCNIC_DEF_INT_MASK ;
 int QLCNIC_FW_MBX_CTRL ;
 int QLCNIC_MBX_ASYNC_EVENT ;
 int QLCNIC_MBX_FW (TYPE_2__*,int ) ;
 int QLCNIC_SET_OWNER ;
 int QLCRDX (TYPE_2__*,int ) ;
 int QLC_83XX_MBX_RESPONSE_ARRIVED ;
 int __qlcnic_83xx_process_aen (struct qlcnic_adapter*) ;
 int qlcnic_83xx_notify_mbx_response (struct qlcnic_mailbox*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int) ;

__attribute__((used)) static irqreturn_t qlcnic_83xx_handle_aen(int irq, void *data)
{
 u32 mask, resp, event, rsp_status = QLC_83XX_MBX_RESPONSE_ARRIVED;
 struct qlcnic_adapter *adapter = data;
 struct qlcnic_mailbox *mbx;
 unsigned long flags;

 mbx = adapter->ahw->mailbox;
 spin_lock_irqsave(&mbx->aen_lock, flags);
 resp = QLCRDX(adapter->ahw, QLCNIC_FW_MBX_CTRL);
 if (!(resp & QLCNIC_SET_OWNER))
  goto out;

 event = readl(QLCNIC_MBX_FW(adapter->ahw, 0));
 if (event & QLCNIC_MBX_ASYNC_EVENT) {
  __qlcnic_83xx_process_aen(adapter);
 } else {
  if (mbx->rsp_status != rsp_status)
   qlcnic_83xx_notify_mbx_response(mbx);
  else
   adapter->stats.mbx_spurious_intr++;
 }

out:
 mask = QLCRDX(adapter->ahw, QLCNIC_DEF_INT_MASK);
 writel(0, adapter->ahw->pci_base0 + mask);
 spin_unlock_irqrestore(&mbx->aen_lock, flags);
 return IRQ_HANDLED;
}

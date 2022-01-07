
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct fjes_hw {int my_epid; int epstop_task; int epstop_req_bit; TYPE_7__* ep_shm_info; int txrx_stop_req_bit; int rx_status_lock; } ;
struct fjes_adapter {int control_wq; int unshare_watch_task; int unshare_watch_bitmask; struct fjes_hw hw; } ;
typedef enum ep_partner_status { ____Placeholder_ep_partner_status } ep_partner_status ;
struct TYPE_13__ {TYPE_5__* info; } ;
struct TYPE_10__ {TYPE_2__* info; } ;
struct TYPE_14__ {TYPE_6__ rx; TYPE_3__ tx; } ;
struct TYPE_11__ {int rx_status; } ;
struct TYPE_12__ {TYPE_4__ v1i; } ;
struct TYPE_8__ {int rx_status; } ;
struct TYPE_9__ {TYPE_1__ v1i; } ;






 int FJES_RX_STOP_REQ_DONE ;
 int FJES_RX_STOP_REQ_REQUEST ;
 int clear_bit (int,int *) ;
 int fjes_hw_get_partner_ep_status (struct fjes_hw*,int) ;
 int queue_work (int ,int *) ;
 int set_bit (int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_fjes_txrx_stop_req_irq_post (struct fjes_hw*,int) ;
 int trace_fjes_txrx_stop_req_irq_pre (struct fjes_hw*,int,int) ;
 int work_pending (int *) ;

__attribute__((used)) static void fjes_txrx_stop_req_irq(struct fjes_adapter *adapter,
       int src_epid)
{
 struct fjes_hw *hw = &adapter->hw;
 enum ep_partner_status status;
 unsigned long flags;

 status = fjes_hw_get_partner_ep_status(hw, src_epid);
 trace_fjes_txrx_stop_req_irq_pre(hw, src_epid, status);
 switch (status) {
 case 129:
 case 131:
 default:
  break;
 case 128:
  if (src_epid < hw->my_epid) {
   spin_lock_irqsave(&hw->rx_status_lock, flags);
   hw->ep_shm_info[src_epid].tx.info->v1i.rx_status |=
    FJES_RX_STOP_REQ_DONE;
   spin_unlock_irqrestore(&hw->rx_status_lock, flags);

   clear_bit(src_epid, &hw->txrx_stop_req_bit);
   set_bit(src_epid, &adapter->unshare_watch_bitmask);

   if (!work_pending(&adapter->unshare_watch_task))
    queue_work(adapter->control_wq,
        &adapter->unshare_watch_task);
  }
  break;
 case 130:
  if (hw->ep_shm_info[src_epid].rx.info->v1i.rx_status &
      FJES_RX_STOP_REQ_REQUEST) {
   set_bit(src_epid, &hw->epstop_req_bit);
   if (!work_pending(&hw->epstop_task))
    queue_work(adapter->control_wq,
        &hw->epstop_task);
  }
  break;
 }
 trace_fjes_txrx_stop_req_irq_post(hw, src_epid);
}

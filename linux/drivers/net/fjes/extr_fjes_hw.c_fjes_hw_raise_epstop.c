
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int buffer_unshare_reserve_bit; } ;
struct fjes_hw {int max_epid; int my_epid; int rx_status_lock; TYPE_6__* ep_shm_info; int txrx_stop_req_bit; TYPE_2__ hw_info; } ;
typedef enum ep_partner_status { ____Placeholder_ep_partner_status } ep_partner_status ;
struct TYPE_11__ {TYPE_4__* info; } ;
struct TYPE_7__ {int send_intr_unshare; } ;
struct TYPE_12__ {TYPE_5__ tx; TYPE_1__ ep_stats; } ;
struct TYPE_9__ {int rx_status; } ;
struct TYPE_10__ {TYPE_3__ v1i; } ;



 int FJES_RX_STOP_REQ_REQUEST ;
 int REG_ICTL_MASK_TXRX_STOP_REQ ;
 int fjes_hw_get_partner_ep_status (struct fjes_hw*,int) ;
 int fjes_hw_raise_interrupt (struct fjes_hw*,int,int ) ;
 int set_bit (int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void fjes_hw_raise_epstop(struct fjes_hw *hw)
{
 enum ep_partner_status status;
 unsigned long flags;
 int epidx;

 for (epidx = 0; epidx < hw->max_epid; epidx++) {
  if (epidx == hw->my_epid)
   continue;

  status = fjes_hw_get_partner_ep_status(hw, epidx);
  switch (status) {
  case 128:
   fjes_hw_raise_interrupt(hw, epidx,
      REG_ICTL_MASK_TXRX_STOP_REQ);
   hw->ep_shm_info[epidx].ep_stats.send_intr_unshare += 1;
   break;
  default:
   break;
  }

  set_bit(epidx, &hw->hw_info.buffer_unshare_reserve_bit);
  set_bit(epidx, &hw->txrx_stop_req_bit);

  spin_lock_irqsave(&hw->rx_status_lock, flags);
  hw->ep_shm_info[epidx].tx.info->v1i.rx_status |=
    FJES_RX_STOP_REQ_REQUEST;
  spin_unlock_irqrestore(&hw->rx_status_lock, flags);
 }
}

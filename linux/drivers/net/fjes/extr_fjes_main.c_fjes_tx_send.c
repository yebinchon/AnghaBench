
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ep_shm_info; } ;
struct fjes_adapter {int raise_intr_rxdata_task; int txrx_wq; TYPE_2__ hw; } ;
struct TYPE_10__ {TYPE_4__* info; } ;
struct TYPE_8__ {int tx_status; } ;
struct TYPE_9__ {TYPE_3__ v1i; } ;
struct TYPE_6__ {TYPE_5__ tx; } ;


 int FJES_TX_DELAY_SEND_PENDING ;
 int fjes_hw_epbuf_tx_pkt_send (TYPE_5__*,void*,size_t) ;
 int queue_work (int ,int *) ;
 int work_pending (int *) ;

__attribute__((used)) static int fjes_tx_send(struct fjes_adapter *adapter, int dest,
   void *data, size_t len)
{
 int retval;

 retval = fjes_hw_epbuf_tx_pkt_send(&adapter->hw.ep_shm_info[dest].tx,
        data, len);
 if (retval)
  return retval;

 adapter->hw.ep_shm_info[dest].tx.info->v1i.tx_status =
  FJES_TX_DELAY_SEND_PENDING;
 if (!work_pending(&adapter->raise_intr_rxdata_task))
  queue_work(adapter->txrx_wq,
      &adapter->raise_intr_rxdata_task);

 retval = 0;
 return retval;
}

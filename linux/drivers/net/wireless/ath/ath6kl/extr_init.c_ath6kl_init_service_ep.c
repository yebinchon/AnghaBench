
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_refill_thresh; int rx_allocthresh; int rx_alloc_thresh; int tx_full; int rx_refill; int rx; int tx_comp_multi; } ;
struct htc_service_connect_req {int svc_id; int conn_flags; TYPE_1__ ep_cb; int max_rxmsg_sz; int flags; int max_txq_depth; } ;
struct ath6kl {int dummy; } ;
typedef int connect ;


 int ATH6KL_BUFFER_SIZE ;
 int ATH6KL_MAX_RX_BUFFERS ;
 int EIO ;
 int HTC_CONN_FLGS_REDUCE_CRED_DRIB ;
 int HTC_CONN_FLGS_THRESH_LVL_HALF ;
 int HTC_CONN_FLGS_THRESH_MASK ;
 int HTC_FLGS_TX_BNDL_PAD_EN ;
 int MAX_DEFAULT_SEND_QUEUE_DEPTH ;
 int WMI_CONTROL_SVC ;
 int WMI_DATA_BE_SVC ;
 int WMI_DATA_BK_SVC ;
 int WMI_DATA_VI_SVC ;
 int WMI_DATA_VO_SVC ;
 int WMI_MAX_TX_DATA_FRAME_LENGTH ;
 int ath6kl_alloc_amsdu_rxbuf ;
 scalar_t__ ath6kl_connectservice (struct ath6kl*,struct htc_service_connect_req*,char*) ;
 int ath6kl_rx ;
 int ath6kl_rx_refill ;
 int ath6kl_tx_complete ;
 int ath6kl_tx_queue_full ;
 int memset (struct htc_service_connect_req*,int ,int) ;

__attribute__((used)) static int ath6kl_init_service_ep(struct ath6kl *ar)
{
 struct htc_service_connect_req connect;

 memset(&connect, 0, sizeof(connect));


 connect.ep_cb.tx_comp_multi = ath6kl_tx_complete;
 connect.ep_cb.rx = ath6kl_rx;
 connect.ep_cb.rx_refill = ath6kl_rx_refill;
 connect.ep_cb.tx_full = ath6kl_tx_queue_full;





 connect.max_txq_depth = MAX_DEFAULT_SEND_QUEUE_DEPTH;
 connect.ep_cb.rx_refill_thresh = ATH6KL_MAX_RX_BUFFERS / 4;
 if (!connect.ep_cb.rx_refill_thresh)
  connect.ep_cb.rx_refill_thresh++;


 connect.svc_id = WMI_CONTROL_SVC;
 if (ath6kl_connectservice(ar, &connect, "WMI CONTROL"))
  return -EIO;

 connect.flags |= HTC_FLGS_TX_BNDL_PAD_EN;






 connect.max_rxmsg_sz = WMI_MAX_TX_DATA_FRAME_LENGTH;






 connect.ep_cb.rx_alloc_thresh = ATH6KL_BUFFER_SIZE;
 connect.ep_cb.rx_allocthresh = ath6kl_alloc_amsdu_rxbuf;





 connect.conn_flags |= HTC_CONN_FLGS_REDUCE_CRED_DRIB;
 connect.conn_flags &= ~HTC_CONN_FLGS_THRESH_MASK;
 connect.conn_flags |= HTC_CONN_FLGS_THRESH_LVL_HALF;

 connect.svc_id = WMI_DATA_BE_SVC;

 if (ath6kl_connectservice(ar, &connect, "WMI DATA BE"))
  return -EIO;


 connect.svc_id = WMI_DATA_BK_SVC;
 if (ath6kl_connectservice(ar, &connect, "WMI DATA BK"))
  return -EIO;


 connect.svc_id = WMI_DATA_VI_SVC;
 if (ath6kl_connectservice(ar, &connect, "WMI DATA VI"))
  return -EIO;
 connect.svc_id = WMI_DATA_VO_SVC;
 if (ath6kl_connectservice(ar, &connect, "WMI DATA VO"))
  return -EIO;

 return 0;
}

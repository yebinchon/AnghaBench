
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ep_rx_complete; int ep_tx_complete; } ;
struct ath10k_htc_svc_conn_resp {int service_id; int max_send_queue_depth; TYPE_1__ ep_ops; } ;
struct ath10k_htc_svc_conn_req {int service_id; int max_send_queue_depth; TYPE_1__ ep_ops; } ;
struct ath10k_htc {int ctl_resp; struct ath10k* ar; int tx_lock; } ;
struct ath10k {struct ath10k_htc htc; } ;
typedef int conn_resp ;
typedef int conn_req ;


 int ATH10K_HTC_SVC_ID_RSVD_CTRL ;
 int ATH10K_NUM_CONTROL_TX_BUFFERS ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_htc_connect_service (struct ath10k_htc*,struct ath10k_htc_svc_conn_resp*,struct ath10k_htc_svc_conn_resp*) ;
 int ath10k_htc_control_rx_complete ;
 int ath10k_htc_control_tx_complete ;
 int ath10k_htc_reset_endpoint_states (struct ath10k_htc*) ;
 int init_completion (int *) ;
 int memset (struct ath10k_htc_svc_conn_resp*,int ,int) ;
 int spin_lock_init (int *) ;

int ath10k_htc_init(struct ath10k *ar)
{
 int status;
 struct ath10k_htc *htc = &ar->htc;
 struct ath10k_htc_svc_conn_req conn_req;
 struct ath10k_htc_svc_conn_resp conn_resp;

 spin_lock_init(&htc->tx_lock);

 ath10k_htc_reset_endpoint_states(htc);

 htc->ar = ar;


 memset(&conn_req, 0, sizeof(conn_req));
 memset(&conn_resp, 0, sizeof(conn_resp));
 conn_req.ep_ops.ep_tx_complete = ath10k_htc_control_tx_complete;
 conn_req.ep_ops.ep_rx_complete = ath10k_htc_control_rx_complete;
 conn_req.max_send_queue_depth = ATH10K_NUM_CONTROL_TX_BUFFERS;
 conn_req.service_id = ATH10K_HTC_SVC_ID_RSVD_CTRL;


 status = ath10k_htc_connect_service(htc, &conn_req, &conn_resp);
 if (status) {
  ath10k_err(ar, "could not connect to htc service (%d)\n",
      status);
  return status;
 }

 init_completion(&htc->ctl_resp);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ep_tx_credits; int ep_rx_complete; int * ep_tx_complete; } ;
struct ath10k_htc_svc_conn_resp {int service_id; TYPE_1__ ep_ops; } ;
struct ath10k_htc_svc_conn_req {int service_id; TYPE_1__ ep_ops; } ;
struct ath10k {int htc; } ;
typedef int conn_resp ;
typedef int conn_req ;


 int ATH10K_HTC_SVC_ID_HTT_LOG_MSG ;
 int ath10k_htc_connect_service (int *,struct ath10k_htc_svc_conn_resp*,struct ath10k_htc_svc_conn_resp*) ;
 int ath10k_htc_pktlog_process_rx ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int memset (struct ath10k_htc_svc_conn_resp*,int ,int) ;

__attribute__((used)) static int ath10k_htc_pktlog_connect(struct ath10k *ar)
{
 struct ath10k_htc_svc_conn_resp conn_resp;
 struct ath10k_htc_svc_conn_req conn_req;
 int status;

 memset(&conn_req, 0, sizeof(conn_req));
 memset(&conn_resp, 0, sizeof(conn_resp));

 conn_req.ep_ops.ep_tx_complete = ((void*)0);
 conn_req.ep_ops.ep_rx_complete = ath10k_htc_pktlog_process_rx;
 conn_req.ep_ops.ep_tx_credits = ((void*)0);


 conn_req.service_id = ATH10K_HTC_SVC_ID_HTT_LOG_MSG;
 status = ath10k_htc_connect_service(&ar->htc, &conn_req, &conn_resp);
 if (status) {
  ath10k_warn(ar, "failed to connect to PKTLOG service: %d\n",
       status);
  return status;
 }

 return 0;
}

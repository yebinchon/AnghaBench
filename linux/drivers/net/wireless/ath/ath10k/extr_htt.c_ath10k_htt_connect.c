
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k_htt {int eid; TYPE_1__* ar; } ;
struct TYPE_4__ {int ep_rx_complete; int ep_tx_complete; } ;
struct ath10k_htc_svc_conn_resp {int eid; int service_id; TYPE_2__ ep_ops; } ;
struct ath10k_htc_svc_conn_req {int eid; int service_id; TYPE_2__ ep_ops; } ;
typedef int conn_resp ;
typedef int conn_req ;
struct TYPE_3__ {int htc; } ;


 int ATH10K_HTC_SVC_ID_HTT_DATA_MSG ;
 int ath10k_htc_connect_service (int *,struct ath10k_htc_svc_conn_resp*,struct ath10k_htc_svc_conn_resp*) ;
 int ath10k_htt_htc_t2h_msg_handler ;
 int ath10k_htt_htc_tx_complete ;
 int memset (struct ath10k_htc_svc_conn_resp*,int ,int) ;

int ath10k_htt_connect(struct ath10k_htt *htt)
{
 struct ath10k_htc_svc_conn_req conn_req;
 struct ath10k_htc_svc_conn_resp conn_resp;
 int status;

 memset(&conn_req, 0, sizeof(conn_req));
 memset(&conn_resp, 0, sizeof(conn_resp));

 conn_req.ep_ops.ep_tx_complete = ath10k_htt_htc_tx_complete;
 conn_req.ep_ops.ep_rx_complete = ath10k_htt_htc_t2h_msg_handler;


 conn_req.service_id = ATH10K_HTC_SVC_ID_HTT_DATA_MSG;

 status = ath10k_htc_connect_service(&htt->ar->htc, &conn_req,
         &conn_resp);

 if (status)
  return status;

 htt->eid = conn_resp.eid;

 return 0;
}

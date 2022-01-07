
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ep_tx_credits; int ep_rx_complete; int ep_tx_complete; } ;
struct ath10k_htc_svc_conn_resp {int eid; int service_id; TYPE_1__ ep_ops; } ;
struct ath10k_htc_svc_conn_req {int eid; int service_id; TYPE_1__ ep_ops; } ;
struct TYPE_4__ {int eid; struct ath10k_htc_svc_conn_resp svc_map; } ;
struct ath10k {TYPE_2__ wmi; int htc; } ;
typedef int conn_resp ;
typedef int conn_req ;


 int ATH10K_HTC_SVC_ID_WMI_CONTROL ;
 int ath10k_htc_connect_service (int *,struct ath10k_htc_svc_conn_resp*,struct ath10k_htc_svc_conn_resp*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_htc_tx_complete ;
 int ath10k_wmi_op_ep_tx_credits ;
 int ath10k_wmi_process_rx ;
 int memset (struct ath10k_htc_svc_conn_resp*,int ,int) ;

int ath10k_wmi_connect(struct ath10k *ar)
{
 int status;
 struct ath10k_htc_svc_conn_req conn_req;
 struct ath10k_htc_svc_conn_resp conn_resp;

 memset(&ar->wmi.svc_map, 0, sizeof(ar->wmi.svc_map));

 memset(&conn_req, 0, sizeof(conn_req));
 memset(&conn_resp, 0, sizeof(conn_resp));


 conn_req.ep_ops.ep_tx_complete = ath10k_wmi_htc_tx_complete;
 conn_req.ep_ops.ep_rx_complete = ath10k_wmi_process_rx;
 conn_req.ep_ops.ep_tx_credits = ath10k_wmi_op_ep_tx_credits;


 conn_req.service_id = ATH10K_HTC_SVC_ID_WMI_CONTROL;

 status = ath10k_htc_connect_service(&ar->htc, &conn_req, &conn_resp);
 if (status) {
  ath10k_warn(ar, "failed to connect to WMI CONTROL service status: %d\n",
       status);
  return status;
 }

 ar->wmi.eid = conn_resp.eid;
 return 0;
}

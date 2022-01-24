#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ep_tx_credits; int /*<<< orphan*/  ep_rx_complete; int /*<<< orphan*/  ep_tx_complete; } ;
struct ath10k_htc_svc_conn_resp {int /*<<< orphan*/  eid; int /*<<< orphan*/  service_id; TYPE_1__ ep_ops; } ;
struct ath10k_htc_svc_conn_req {int /*<<< orphan*/  eid; int /*<<< orphan*/  service_id; TYPE_1__ ep_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  eid; struct ath10k_htc_svc_conn_resp svc_map; } ;
struct ath10k {TYPE_2__ wmi; int /*<<< orphan*/  htc; } ;
typedef  int /*<<< orphan*/  conn_resp ;
typedef  int /*<<< orphan*/  conn_req ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_HTC_SVC_ID_WMI_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ath10k_htc_svc_conn_resp*,struct ath10k_htc_svc_conn_resp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  ath10k_wmi_htc_tx_complete ; 
 int /*<<< orphan*/  ath10k_wmi_op_ep_tx_credits ; 
 int /*<<< orphan*/  ath10k_wmi_process_rx ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_htc_svc_conn_resp*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ath10k *ar)
{
	int status;
	struct ath10k_htc_svc_conn_req conn_req;
	struct ath10k_htc_svc_conn_resp conn_resp;

	FUNC2(&ar->wmi.svc_map, 0, sizeof(ar->wmi.svc_map));

	FUNC2(&conn_req, 0, sizeof(conn_req));
	FUNC2(&conn_resp, 0, sizeof(conn_resp));

	/* these fields are the same for all service endpoints */
	conn_req.ep_ops.ep_tx_complete = ath10k_wmi_htc_tx_complete;
	conn_req.ep_ops.ep_rx_complete = ath10k_wmi_process_rx;
	conn_req.ep_ops.ep_tx_credits = ath10k_wmi_op_ep_tx_credits;

	/* connect to control service */
	conn_req.service_id = ATH10K_HTC_SVC_ID_WMI_CONTROL;

	status = FUNC0(&ar->htc, &conn_req, &conn_resp);
	if (status) {
		FUNC1(ar, "failed to connect to WMI CONTROL service status: %d\n",
			    status);
		return status;
	}

	ar->wmi.eid = conn_resp.eid;
	return 0;
}
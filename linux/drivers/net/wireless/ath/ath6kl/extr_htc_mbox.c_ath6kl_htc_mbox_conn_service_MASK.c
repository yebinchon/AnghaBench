#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct htc_target {int tgt_cred_sz; struct htc_endpoint* endpoint; } ;
struct htc_service_connect_resp {scalar_t__ resp_code; int endpoint; unsigned int len_max; } ;
struct htc_service_connect_req {scalar_t__ svc_id; scalar_t__ conn_flags; int max_rxmsg_sz; int /*<<< orphan*/  flags; int /*<<< orphan*/  ep_cb; int /*<<< orphan*/  max_txq_depth; } ;
struct htc_packet {int act_len; scalar_t__ buf; int /*<<< orphan*/ * completion; } ;
struct TYPE_2__ {int svc_id; int endpoint; int cred_sz; int cred_per_msg; struct htc_endpoint* htc_ep; } ;
struct htc_endpoint {int eid; int svc_id; unsigned int len_max; int tx_drop_packet_threshold; int /*<<< orphan*/  conn_flags; TYPE_1__ cred_dist; int /*<<< orphan*/  ep_cb; int /*<<< orphan*/  max_txq_depth; } ;
struct htc_conn_service_resp {scalar_t__ status; int /*<<< orphan*/  max_msg_sz; scalar_t__ eid; int /*<<< orphan*/  svc_id; int /*<<< orphan*/  msg_id; } ;
struct htc_conn_service_msg {scalar_t__ svc_meta_len; void* conn_flags; void* svc_id; void* msg_id; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int ENDPOINT_0 ; 
 int ENDPOINT_MAX ; 
 int ENDPOINT_UNUSED ; 
 int ENOMEM ; 
 scalar_t__ HTC_CTRL_RSVD_SVC ; 
 unsigned int HTC_MAX_CTRL_MSG_LEN ; 
 scalar_t__ HTC_MSG_CONN_SVC_ID ; 
 scalar_t__ HTC_MSG_CONN_SVC_RESP_ID ; 
 scalar_t__ HTC_SERVICE_SUCCESS ; 
 int /*<<< orphan*/  HTC_SERVICE_TX_PACKET_TAG ; 
 int MAX_DEF_COOKIE_NUM ; 
 int MAX_HI_COOKIE_NUM ; 
 scalar_t__ FUNC0 (int) ; 
#define  WMI_DATA_BK_SVC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct htc_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct htc_target*,struct htc_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 struct htc_packet* FUNC6 (struct htc_target*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct htc_target*,struct htc_packet*) ; 
 int /*<<< orphan*/  FUNC8 (struct htc_packet*) ; 
 struct htc_packet* FUNC9 (struct htc_target*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct htc_conn_service_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct htc_target*,struct htc_packet*) ; 
 int /*<<< orphan*/  FUNC13 (struct htc_packet*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct htc_target *target,
			    struct htc_service_connect_req *conn_req,
			    struct htc_service_connect_resp *conn_resp)
{
	struct htc_packet *rx_pkt = NULL;
	struct htc_packet *tx_pkt = NULL;
	struct htc_conn_service_resp *resp_msg;
	struct htc_conn_service_msg *conn_msg;
	struct htc_endpoint *endpoint;
	enum htc_endpoint_id assigned_ep = ENDPOINT_MAX;
	unsigned int max_msg_sz = 0;
	int status = 0;
	u16 msg_id;

	FUNC1(ATH6KL_DBG_HTC,
		   "htc connect service target 0x%p service id 0x%x\n",
		   target, conn_req->svc_id);

	if (conn_req->svc_id == HTC_CTRL_RSVD_SVC) {
		/* special case for pseudo control service */
		assigned_ep = ENDPOINT_0;
		max_msg_sz = HTC_MAX_CTRL_MSG_LEN;
	} else {
		/* allocate a packet to send to the target */
		tx_pkt = FUNC6(target, true);

		if (!tx_pkt)
			return -ENOMEM;

		conn_msg = (struct htc_conn_service_msg *)tx_pkt->buf;
		FUNC11(conn_msg, 0, sizeof(*conn_msg));
		conn_msg->msg_id = FUNC5(HTC_MSG_CONN_SVC_ID);
		conn_msg->svc_id = FUNC5(conn_req->svc_id);
		conn_msg->conn_flags = FUNC5(conn_req->conn_flags);

		FUNC13(tx_pkt, NULL, (u8 *) conn_msg,
				 sizeof(*conn_msg) + conn_msg->svc_meta_len,
				 ENDPOINT_0, HTC_SERVICE_TX_PACKET_TAG);

		/* we want synchronous operation */
		tx_pkt->completion = NULL;
		FUNC4(tx_pkt, 0, 0, 0);
		status = FUNC3(target, tx_pkt);

		if (status)
			goto fail_tx;

		/* wait for response */
		rx_pkt = FUNC9(target);

		if (!rx_pkt) {
			status = -ENOMEM;
			goto fail_tx;
		}

		resp_msg = (struct htc_conn_service_resp *)rx_pkt->buf;
		msg_id = FUNC10(resp_msg->msg_id);

		if ((msg_id != HTC_MSG_CONN_SVC_RESP_ID) ||
		    (rx_pkt->act_len < sizeof(*resp_msg))) {
			status = -ENOMEM;
			goto fail_tx;
		}

		conn_resp->resp_code = resp_msg->status;
		/* check response status */
		if (resp_msg->status != HTC_SERVICE_SUCCESS) {
			FUNC2("target failed service 0x%X connect request (status:%d)\n",
				   resp_msg->svc_id, resp_msg->status);
			status = -ENOMEM;
			goto fail_tx;
		}

		assigned_ep = (enum htc_endpoint_id)resp_msg->eid;
		max_msg_sz = FUNC10(resp_msg->max_msg_sz);
	}

	if (FUNC0(assigned_ep == ENDPOINT_UNUSED ||
			 assigned_ep >= ENDPOINT_MAX || !max_msg_sz)) {
		status = -ENOMEM;
		goto fail_tx;
	}

	endpoint = &target->endpoint[assigned_ep];
	endpoint->eid = assigned_ep;
	if (endpoint->svc_id) {
		status = -ENOMEM;
		goto fail_tx;
	}

	/* return assigned endpoint to caller */
	conn_resp->endpoint = assigned_ep;
	conn_resp->len_max = max_msg_sz;

	/* setup the endpoint */

	/* this marks the endpoint in use */
	endpoint->svc_id = conn_req->svc_id;

	endpoint->max_txq_depth = conn_req->max_txq_depth;
	endpoint->len_max = max_msg_sz;
	endpoint->ep_cb = conn_req->ep_cb;
	endpoint->cred_dist.svc_id = conn_req->svc_id;
	endpoint->cred_dist.htc_ep = endpoint;
	endpoint->cred_dist.endpoint = assigned_ep;
	endpoint->cred_dist.cred_sz = target->tgt_cred_sz;

	switch (endpoint->svc_id) {
	case WMI_DATA_BK_SVC:
		endpoint->tx_drop_packet_threshold = MAX_DEF_COOKIE_NUM / 3;
		break;
	default:
		endpoint->tx_drop_packet_threshold = MAX_HI_COOKIE_NUM;
		break;
	}

	if (conn_req->max_rxmsg_sz) {
		/*
		 * Override cred_per_msg calculation, this optimizes
		 * the credit-low indications since the host will actually
		 * issue smaller messages in the Send path.
		 */
		if (conn_req->max_rxmsg_sz > max_msg_sz) {
			status = -ENOMEM;
			goto fail_tx;
		}
		endpoint->cred_dist.cred_per_msg =
		    conn_req->max_rxmsg_sz / target->tgt_cred_sz;
	} else
		endpoint->cred_dist.cred_per_msg =
		    max_msg_sz / target->tgt_cred_sz;

	if (!endpoint->cred_dist.cred_per_msg)
		endpoint->cred_dist.cred_per_msg = 1;

	/* save local connection flags */
	endpoint->conn_flags = conn_req->flags;

fail_tx:
	if (tx_pkt)
		FUNC7(target, tx_pkt);

	if (rx_pkt) {
		FUNC8(rx_pkt);
		FUNC12(target, rx_pkt);
	}

	return status;
}
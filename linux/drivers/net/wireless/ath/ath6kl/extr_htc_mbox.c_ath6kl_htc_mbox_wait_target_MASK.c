#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct htc_target {char* tgt_creds; scalar_t__ msg_per_bndl_max; TYPE_3__* dev; scalar_t__ htc_tgt_ver; scalar_t__ tgt_cred_sz; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tx_full; int /*<<< orphan*/ * rx_refill; int /*<<< orphan*/  rx; } ;
struct htc_service_connect_resp {int /*<<< orphan*/  svc_id; int /*<<< orphan*/  max_txq_depth; TYPE_2__ ep_cb; } ;
struct htc_service_connect_req {int /*<<< orphan*/  svc_id; int /*<<< orphan*/  max_txq_depth; TYPE_2__ ep_cb; } ;
struct htc_ready_msg {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cred_sz; int /*<<< orphan*/  cred_cnt; int /*<<< orphan*/  msg_id; } ;
struct htc_ready_ext_msg {scalar_t__ msg_per_htc_bndl; scalar_t__ htc_ver; TYPE_1__ ver2_0_info; } ;
struct htc_packet {int act_len; scalar_t__ buf; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  connect ;
struct TYPE_6__ {int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HTC_CTRL_RSVD_SVC ; 
 scalar_t__ HTC_MSG_READY_ID ; 
 scalar_t__ HTC_VERSION_2P0 ; 
 int /*<<< orphan*/  NUM_CONTROL_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,struct htc_service_connect_resp*,struct htc_service_connect_resp*) ; 
 int /*<<< orphan*/  htc_ctrl_rx ; 
 int /*<<< orphan*/  FUNC3 (struct htc_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_target*) ; 
 struct htc_packet* FUNC5 (struct htc_target*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct htc_service_connect_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct htc_target*,struct htc_packet*) ; 

__attribute__((used)) static int FUNC9(struct htc_target *target)
{
	struct htc_packet *packet = NULL;
	struct htc_ready_ext_msg *rdy_msg;
	struct htc_service_connect_req connect;
	struct htc_service_connect_resp resp;
	int status;

	/* we should be getting 1 control message that the target is ready */
	packet = FUNC5(target);

	if (!packet)
		return -ENOMEM;

	/* we controlled the buffer creation so it's properly aligned */
	rdy_msg = (struct htc_ready_ext_msg *)packet->buf;

	if ((FUNC6(rdy_msg->ver2_0_info.msg_id) != HTC_MSG_READY_ID) ||
	    (packet->act_len < sizeof(struct htc_ready_msg))) {
		status = -ENOMEM;
		goto fail_wait_target;
	}

	if (!rdy_msg->ver2_0_info.cred_cnt || !rdy_msg->ver2_0_info.cred_sz) {
		status = -ENOMEM;
		goto fail_wait_target;
	}

	target->tgt_creds = FUNC6(rdy_msg->ver2_0_info.cred_cnt);
	target->tgt_cred_sz = FUNC6(rdy_msg->ver2_0_info.cred_sz);

	FUNC0(ATH6KL_DBG_BOOT,
		   "htc target ready credits %d size %d\n",
		   target->tgt_creds, target->tgt_cred_sz);

	/* check if this is an extended ready message */
	if (packet->act_len >= sizeof(struct htc_ready_ext_msg)) {
		/* this is an extended message */
		target->htc_tgt_ver = rdy_msg->htc_ver;
		target->msg_per_bndl_max = rdy_msg->msg_per_htc_bndl;
	} else {
		/* legacy */
		target->htc_tgt_ver = HTC_VERSION_2P0;
		target->msg_per_bndl_max = 0;
	}

	FUNC0(ATH6KL_DBG_BOOT, "htc using protocol %s (%d)\n",
		   (target->htc_tgt_ver == HTC_VERSION_2P0) ? "2.0" : ">= 2.1",
		   target->htc_tgt_ver);

	if (target->msg_per_bndl_max > 0)
		FUNC4(target);

	/* setup our pseudo HTC control endpoint connection */
	FUNC7(&connect, 0, sizeof(connect));
	FUNC7(&resp, 0, sizeof(resp));
	connect.ep_cb.rx = htc_ctrl_rx;
	connect.ep_cb.rx_refill = NULL;
	connect.ep_cb.tx_full = NULL;
	connect.max_txq_depth = NUM_CONTROL_BUFFERS;
	connect.svc_id = HTC_CTRL_RSVD_SVC;

	/* connect fake service */
	status = FUNC2((void *)target, &connect, &resp);

	if (status)
		/*
		 * FIXME: this call doesn't make sense, the caller should
		 * call ath6kl_htc_mbox_cleanup() when it wants remove htc
		 */
		FUNC1(target->dev->ar);

fail_wait_target:
	if (packet) {
		FUNC3(packet);
		FUNC8(target, packet);
	}

	return status;
}
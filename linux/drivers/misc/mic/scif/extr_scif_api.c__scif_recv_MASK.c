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
struct scifmsg {int /*<<< orphan*/ * payload; int /*<<< orphan*/  uop; int /*<<< orphan*/  src; } ;
struct scif_qp {int /*<<< orphan*/  inbound_q; } ;
struct TYPE_2__ {struct scif_qp* qp; } ;
struct scif_endpt {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  recvwq; int /*<<< orphan*/  remote_dev; int /*<<< orphan*/  remote_ep; int /*<<< orphan*/  port; TYPE_1__ qp_info; } ;
typedef  scalar_t__ scif_epd_t ;

/* Variables and functions */
 int ECONNRESET ; 
 int ENOTCONN ; 
 scalar_t__ SCIFEP_CONNECTED ; 
 scalar_t__ SCIFEP_DISCONNECTED ; 
 int /*<<< orphan*/  SCIF_CLIENT_RCVD ; 
 int SCIF_ENDPT_QP_SIZE ; 
 int SCIF_RECV_BLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct scifmsg*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(scif_epd_t epd, void *msg, int len, int flags)
{
	int read_size;
	struct scif_endpt *ep = (struct scif_endpt *)epd;
	struct scifmsg notif_msg;
	int curr_recv_len = 0, remaining_len = len, read_count;
	int ret = 0;
	struct scif_qp *qp = ep->qp_info.qp;

	if (flags & SCIF_RECV_BLOCK)
		FUNC1();
	FUNC6(&ep->lock);
	while (remaining_len && (SCIFEP_CONNECTED == ep->state ||
				 SCIFEP_DISCONNECTED == ep->state)) {
		read_count = FUNC3(&qp->inbound_q, remaining_len);
		if (read_count) {
			/*
			 * Best effort to recv as much data as there
			 * are bytes to read in the RB particularly
			 * important for the Non Blocking case.
			 */
			curr_recv_len = FUNC2(remaining_len, read_count);
			read_size = FUNC4(&qp->inbound_q,
						     msg, curr_recv_len);
			if (ep->state == SCIFEP_CONNECTED) {
				/*
				 * Update the read pointer only if the endpoint
				 * is still connected else the read pointer
				 * might no longer exist since the peer has
				 * freed resources!
				 */
				FUNC5(&qp->inbound_q);
				/*
				 * Send a notification to the peer about the
				 * consumed data message only if the EP is in
				 * SCIFEP_CONNECTED state.
				 */
				notif_msg.src = ep->port;
				notif_msg.uop = SCIF_CLIENT_RCVD;
				notif_msg.payload[0] = ep->remote_ep;
				ret = FUNC0(ep->remote_dev,
							&notif_msg);
				if (ret)
					break;
			}
			remaining_len -= curr_recv_len;
			msg = msg + curr_recv_len;
			continue;
		}
		/*
		 * Bail out now if the EP is in SCIFEP_DISCONNECTED state else
		 * we will keep looping forever.
		 */
		if (ep->state == SCIFEP_DISCONNECTED)
			break;
		/*
		 * Return in the Non Blocking case if there is no data
		 * to read in this iteration.
		 */
		if (!(flags & SCIF_RECV_BLOCK))
			break;
		curr_recv_len = FUNC2(remaining_len, SCIF_ENDPT_QP_SIZE - 1);
		FUNC7(&ep->lock);
		/*
		 * Wait for a SCIF_CLIENT_SEND message in the blocking case
		 * or until other side disconnects.
		 */
		ret =
		FUNC8(ep->recvwq,
					 SCIFEP_CONNECTED != ep->state ||
					 FUNC3(&qp->inbound_q,
						       curr_recv_len)
					 >= curr_recv_len);
		FUNC6(&ep->lock);
		if (ret)
			break;
	}
	if (len - remaining_len)
		ret = len - remaining_len;
	else if (!ret && ep->state != SCIFEP_CONNECTED)
		ret = ep->state == SCIFEP_DISCONNECTED ?
			-ECONNRESET : -ENOTCONN;
	FUNC7(&ep->lock);
	return ret;
}
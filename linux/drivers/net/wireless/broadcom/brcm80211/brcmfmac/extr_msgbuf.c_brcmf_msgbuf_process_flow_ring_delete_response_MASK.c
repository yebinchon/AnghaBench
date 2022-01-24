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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  flow_ring_id; } ;
struct msgbuf_flowring_delete_resp {TYPE_1__ compl_hdr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_msgbuf {int /*<<< orphan*/  flow; struct brcmf_pub* drvr; } ;

/* Variables and functions */
 scalar_t__ BRCMF_H2D_MSGRING_FLOWRING_IDSTART ; 
 int /*<<< orphan*/  MSGBUF ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_msgbuf*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct brcmf_msgbuf *msgbuf,
					       void *buf)
{
	struct brcmf_pub *drvr = msgbuf->drvr;
	struct msgbuf_flowring_delete_resp *flowring_delete_resp;
	u16 status;
	u16 flowid;

	flowring_delete_resp = (struct msgbuf_flowring_delete_resp *)buf;

	flowid = FUNC4(flowring_delete_resp->compl_hdr.flow_ring_id);
	flowid -= BRCMF_H2D_MSGRING_FLOWRING_IDSTART;
	status =  FUNC4(flowring_delete_resp->compl_hdr.status);

	if (status) {
		FUNC0(drvr, "Flowring deletion failed, code %d\n", status);
		FUNC2(msgbuf->flow, flowid);
		return;
	}
	FUNC1(MSGBUF, "Flowring %d Delete response status %d\n", flowid,
		  status);

	FUNC3(msgbuf, flowid);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct lmac {int cmd_pend; int /*<<< orphan*/  lmac_id; struct cgx* cgx; int /*<<< orphan*/  wq_cmd_cmplt; int /*<<< orphan*/  resp; } ;
struct cgx {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CGXX_CMRX_INT ; 
 int /*<<< orphan*/  CGX_EVENT_REG ; 
#define  CGX_EVT_ASYNC 129 
#define  CGX_EVT_CMD_RESP 128 
 int /*<<< orphan*/  EVTREG_ACK ; 
 int /*<<< orphan*/  EVTREG_EVT_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CGX_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lmac*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cgx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct lmac *lmac = data;
	struct cgx *cgx;
	u64 event;

	cgx = lmac->cgx;

	event = FUNC4(cgx, lmac->lmac_id, CGX_EVENT_REG);

	if (!FUNC0(EVTREG_ACK, event))
		return IRQ_NONE;

	switch (FUNC0(EVTREG_EVT_TYPE, event)) {
	case CGX_EVT_CMD_RESP:
		/* Copy the response. Since only one command is active at a
		 * time, there is no way a response can get overwritten
		 */
		lmac->resp = event;
		/* Ensure response is updated before thread context starts */
		FUNC6();

		/* There wont be separate events for link change initiated from
		 * software; Hence report the command responses as events
		 */
		if (FUNC1(event))
			FUNC3(event, lmac);

		/* Release thread waiting for completion  */
		lmac->cmd_pend = false;
		FUNC7(&lmac->wq_cmd_cmplt);
		break;
	case CGX_EVT_ASYNC:
		if (FUNC2(event))
			FUNC3(event, lmac);
		break;
	}

	/* Any new event or command response will be posted by firmware
	 * only after the current status is acked.
	 * Ack the interrupt register as well.
	 */
	FUNC5(lmac->cgx, lmac->lmac_id, CGX_EVENT_REG, 0);
	FUNC5(lmac->cgx, lmac->lmac_id, CGXX_CMRX_INT, FW_CGX_INT);

	return IRQ_HANDLED;
}
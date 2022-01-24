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
struct mei_device {int /*<<< orphan*/  dev; } ;
struct mei_cl_cb {int fop_type; int /*<<< orphan*/  list; } ;
struct mei_cl {int /*<<< orphan*/  wait; int /*<<< orphan*/  rx_wait; int /*<<< orphan*/  rx_flow_ctrl_creds; int /*<<< orphan*/  rd_completed; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  writing_state; struct mei_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MEI_FOP_CONNECT 134 
#define  MEI_FOP_DISCONNECT 133 
#define  MEI_FOP_DISCONNECT_RSP 132 
#define  MEI_FOP_NOTIFY_START 131 
#define  MEI_FOP_NOTIFY_STOP 130 
#define  MEI_FOP_READ 129 
#define  MEI_FOP_WRITE 128 
 int /*<<< orphan*/  MEI_WRITE_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct mei_cl *cl, struct mei_cl_cb *cb)
{
	struct mei_device *dev = cl->dev;

	switch (cb->fop_type) {
	case MEI_FOP_WRITE:
		FUNC7(cb);
		cl->writing_state = MEI_WRITE_COMPLETE;
		if (FUNC10(&cl->tx_wait)) {
			FUNC12(&cl->tx_wait);
		} else {
			FUNC9(dev->dev);
			FUNC8(dev->dev);
		}
		break;

	case MEI_FOP_READ:
		FUNC2(&cb->list, &cl->rd_completed);
		if (!FUNC4(cl) &&
		    !FUNC1(!cl->rx_flow_ctrl_creds))
			cl->rx_flow_ctrl_creds--;
		if (!FUNC3(cl))
			FUNC12(&cl->rx_wait);
		break;

	case MEI_FOP_CONNECT:
	case MEI_FOP_DISCONNECT:
	case MEI_FOP_NOTIFY_STOP:
	case MEI_FOP_NOTIFY_START:
		if (FUNC10(&cl->wait))
			FUNC11(&cl->wait);

		break;
	case MEI_FOP_DISCONNECT_RSP:
		FUNC6(cb);
		FUNC5(cl);
		break;
	default:
		FUNC0(0);
	}
}
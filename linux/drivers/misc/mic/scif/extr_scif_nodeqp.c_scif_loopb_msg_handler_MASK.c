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
struct scifmsg {int dummy; } ;
struct scif_qp {int /*<<< orphan*/  inbound_q; int /*<<< orphan*/  recv_lock; } ;
struct scif_loopb_msg {int /*<<< orphan*/  list; int /*<<< orphan*/  msg; } ;
struct scif_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  loopb_work; int /*<<< orphan*/  loopb_wq; int /*<<< orphan*/  loopb_recv_q; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct scif_loopb_msg*) ; 
 struct scif_loopb_msg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ scif_info ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct scif_dev *scifdev, struct scif_qp *qp)
{
	int read_size;
	struct scif_loopb_msg *msg;

	do {
		msg = FUNC1(sizeof(*msg), GFP_KERNEL);
		if (!msg)
			return -ENOMEM;
		read_size = FUNC4(&qp->inbound_q, &msg->msg,
					     sizeof(struct scifmsg));
		if (read_size != sizeof(struct scifmsg)) {
			FUNC0(msg);
			FUNC5(&qp->inbound_q);
			break;
		}
		FUNC6(&qp->recv_lock);
		FUNC2(&msg->list, &scif_info.loopb_recv_q);
		FUNC7(&qp->recv_lock);
		FUNC3(scif_info.loopb_wq, &scif_info.loopb_work);
		FUNC5(&qp->inbound_q);
	} while (read_size == sizeof(struct scifmsg));
	return read_size;
}
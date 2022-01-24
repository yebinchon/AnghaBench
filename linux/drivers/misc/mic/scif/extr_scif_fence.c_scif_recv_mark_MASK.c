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
struct scifmsg {int* payload; int /*<<< orphan*/  uop; } ;
struct scif_endpt {int remote_ep; int /*<<< orphan*/  remote_dev; } ;
struct scif_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_MARK_ACK ; 
 int /*<<< orphan*/  SCIF_MARK_NACK ; 
 int FUNC0 (struct scif_endpt*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scifmsg*) ; 

void FUNC2(struct scif_dev *scifdev, struct scifmsg *msg)
{
	struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];
	int mark = 0;
	int err;

	err = FUNC0(ep, &mark);
	if (err)
		msg->uop = SCIF_MARK_NACK;
	else
		msg->uop = SCIF_MARK_ACK;
	msg->payload[0] = ep->remote_ep;
	msg->payload[2] = mark;
	FUNC1(ep->remote_dev, msg);
}
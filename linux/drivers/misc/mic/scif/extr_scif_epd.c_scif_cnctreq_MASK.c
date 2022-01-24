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
struct TYPE_4__ {size_t node; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct scifmsg {TYPE_2__ src; int /*<<< orphan*/  uop; TYPE_1__ dst; } ;
struct scif_endpt {scalar_t__ backlog; scalar_t__ conreqcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  conwq; int /*<<< orphan*/  conlist; } ;
struct scif_dev {int dummy; } ;
struct scif_conreq {int /*<<< orphan*/  list; struct scifmsg msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCIF_CNCT_REJ ; 
 int /*<<< orphan*/  FUNC0 (struct scif_conreq*) ; 
 struct scif_conreq* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * scif_dev ; 
 struct scif_endpt* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct scifmsg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct scif_dev *scifdev, struct scifmsg *msg)
{
	struct scif_endpt *ep = NULL;
	struct scif_conreq *conreq;

	conreq = FUNC1(sizeof(*conreq), GFP_KERNEL);
	if (!conreq)
		/* Lack of resources so reject the request. */
		goto conreq_sendrej;

	ep = FUNC3(msg->dst.port);
	if (!ep)
		/*  Send reject due to no listening ports */
		goto conreq_sendrej_free;
	else
		FUNC5(&ep->lock);

	if (ep->backlog <= ep->conreqcnt) {
		/*  Send reject due to too many pending requests */
		FUNC6(&ep->lock);
		goto conreq_sendrej_free;
	}

	conreq->msg = *msg;
	FUNC2(&conreq->list, &ep->conlist);
	ep->conreqcnt++;
	FUNC7(&ep->conwq);
	FUNC6(&ep->lock);
	return;

conreq_sendrej_free:
	FUNC0(conreq);
conreq_sendrej:
	msg->uop = SCIF_CNCT_REJ;
	FUNC4(&scif_dev[msg->src.node], msg);
}
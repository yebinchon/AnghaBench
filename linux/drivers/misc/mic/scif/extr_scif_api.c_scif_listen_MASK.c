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
struct TYPE_5__ {int /*<<< orphan*/ * qp; } ;
struct scif_endpt {size_t state; int backlog; int /*<<< orphan*/  list; TYPE_2__ qp_info; int /*<<< orphan*/  lock; int /*<<< orphan*/  li_accept; int /*<<< orphan*/  conwq; int /*<<< orphan*/  conlist; scalar_t__ acceptcnt; scalar_t__ conreqcnt; } ;
typedef  scalar_t__ scif_epd_t ;
struct TYPE_4__ {int /*<<< orphan*/  this_device; } ;
struct TYPE_6__ {int /*<<< orphan*/  eplock; int /*<<< orphan*/  listen; TYPE_1__ mdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EISCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  SCIFEP_BOUND 137 
#define  SCIFEP_CLLISTEN 136 
#define  SCIFEP_CLOSING 135 
#define  SCIFEP_CONNECTED 134 
#define  SCIFEP_CONNECTING 133 
#define  SCIFEP_DISCONNECTED 132 
#define  SCIFEP_LISTENING 131 
#define  SCIFEP_MAPPING 130 
#define  SCIFEP_UNBOUND 129 
#define  SCIFEP_ZOMBIE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct scif_endpt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * scif_ep_states ; 
 TYPE_3__ scif_info ; 
 int /*<<< orphan*/  FUNC6 (struct scif_endpt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(scif_epd_t epd, int backlog)
{
	struct scif_endpt *ep = (struct scif_endpt *)epd;

	FUNC1(scif_info.mdev.this_device,
		"SCIFAPI listen: ep %p %s\n", ep, scif_ep_states[ep->state]);
	FUNC7(&ep->lock);
	switch (ep->state) {
	case SCIFEP_ZOMBIE:
	case SCIFEP_CLOSING:
	case SCIFEP_CLLISTEN:
	case SCIFEP_UNBOUND:
	case SCIFEP_DISCONNECTED:
		FUNC8(&ep->lock);
		return -EINVAL;
	case SCIFEP_LISTENING:
	case SCIFEP_CONNECTED:
	case SCIFEP_CONNECTING:
	case SCIFEP_MAPPING:
		FUNC8(&ep->lock);
		return -EISCONN;
	case SCIFEP_BOUND:
		break;
	}

	ep->state = SCIFEP_LISTENING;
	ep->backlog = backlog;

	ep->conreqcnt = 0;
	ep->acceptcnt = 0;
	FUNC0(&ep->conlist);
	FUNC2(&ep->conwq);
	FUNC0(&ep->li_accept);
	FUNC8(&ep->lock);

	/*
	 * Listen status is complete so delete the qp information not needed
	 * on a listen before placing on the list of listening ep's
	 */
	FUNC6(ep);
	ep->qp_info.qp = NULL;

	FUNC4(&scif_info.eplock);
	FUNC3(&ep->list, &scif_info.listen);
	FUNC5(&scif_info.eplock);
	return 0;
}
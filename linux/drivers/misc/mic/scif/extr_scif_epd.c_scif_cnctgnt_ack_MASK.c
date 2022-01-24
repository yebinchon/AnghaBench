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
struct scifmsg {scalar_t__* payload; } ;
struct scif_endpt {int /*<<< orphan*/  lock; int /*<<< orphan*/  conwq; int /*<<< orphan*/  list; int /*<<< orphan*/  state; } ;
struct scif_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  connlock; int /*<<< orphan*/  connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCIFEP_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct scif_dev *scifdev, struct scifmsg *msg)
{
	struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];

	FUNC1(&scif_info.connlock);
	FUNC3(&ep->lock);
	/* New ep is now connected with all resources set. */
	ep->state = SCIFEP_CONNECTED;
	FUNC0(&ep->list, &scif_info.connected);
	FUNC5(&ep->conwq);
	FUNC4(&ep->lock);
	FUNC2(&scif_info.connlock);
}
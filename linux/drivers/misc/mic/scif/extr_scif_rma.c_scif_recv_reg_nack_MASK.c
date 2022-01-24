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
struct scif_window {int /*<<< orphan*/  regwq; int /*<<< orphan*/  reg_state; scalar_t__ ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  rma_lock; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;
struct scif_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct scif_dev *scifdev, struct scifmsg *msg)
{
	struct scif_window *window =
		(struct scif_window *)msg->payload[2];
	struct scif_endpt *ep = (struct scif_endpt *)window->ep;

	FUNC0(&ep->rma_info.rma_lock);
	window->reg_state = OP_FAILED;
	FUNC2(&window->regwq);
	FUNC1(&ep->rma_info.rma_lock);
}
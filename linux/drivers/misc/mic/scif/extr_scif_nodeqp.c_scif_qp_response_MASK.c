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
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct scifmsg {TYPE_1__ dst; int /*<<< orphan*/  uop; } ;
struct scif_dev {int /*<<< orphan*/  node; int /*<<< orphan*/  qpairs; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_INIT ; 
 int FUNC0 (struct scif_dev*,struct scifmsg*) ; 
 int FUNC1 (struct scif_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(phys_addr_t phys, struct scif_dev *scifdev)
{
	int err = 0;
	struct scifmsg msg;

	err = FUNC1(scifdev, scifdev->qpairs, phys);
	if (!err) {
		/*
		 * Now that everything is setup and mapped, we're ready
		 * to tell the peer about our queue's location
		 */
		msg.uop = SCIF_INIT;
		msg.dst.node = scifdev->node;
		err = FUNC0(scifdev, &msg);
	}
	return err;
}
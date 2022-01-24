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
struct mei_device {int /*<<< orphan*/  ctrl_wr_list; int /*<<< orphan*/  ctrl_rd_list; int /*<<< orphan*/  write_waiting_list; int /*<<< orphan*/  write_list; } ;
struct mei_cl {scalar_t__ state; TYPE_1__* me_cl; scalar_t__ timer_count; scalar_t__ tx_flow_ctrl_creds; scalar_t__ rx_flow_ctrl_creds; struct mei_device* dev; } ;
struct TYPE_2__ {scalar_t__ connect_count; scalar_t__ tx_flow_ctrl_creds; } ;

/* Variables and functions */
 scalar_t__ MEI_FILE_DISCONNECTED ; 
 scalar_t__ MEI_FILE_INITIALIZING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct mei_cl *cl)
{
	struct mei_device *dev = cl->dev;

	if (cl->state == MEI_FILE_DISCONNECTED ||
	    cl->state <= MEI_FILE_INITIALIZING)
		return;

	cl->state = MEI_FILE_DISCONNECTED;
	FUNC3(&dev->write_list, cl);
	FUNC3(&dev->write_waiting_list, cl);
	FUNC2(&dev->ctrl_rd_list, cl);
	FUNC2(&dev->ctrl_wr_list, cl);
	FUNC1(cl);
	cl->rx_flow_ctrl_creds = 0;
	cl->tx_flow_ctrl_creds = 0;
	cl->timer_count = 0;

	if (!cl->me_cl)
		return;

	if (!FUNC0(cl->me_cl->connect_count == 0))
		cl->me_cl->connect_count--;

	if (cl->me_cl->connect_count == 0)
		cl->me_cl->tx_flow_ctrl_creds = 0;

	FUNC4(cl->me_cl);
	cl->me_cl = NULL;
}
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
struct xpc_partition_uv {int act_state_req; } ;
struct TYPE_2__ {struct xpc_partition_uv uv; } ;
struct xpc_partition {TYPE_1__ sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd_lock ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 

__attribute__((used)) static void
FUNC3(struct xpc_partition *part, int act_state_req)
{
	unsigned long irq_flags;
	struct xpc_partition_uv *part_uv = &part->sn.uv;

	/*
	 * !!! Make our side think that the remote partition sent an activate
	 * !!! mq message our way by doing what the activate IRQ handler would
	 * !!! do had one really been sent.
	 */

	FUNC0(&xpc_activate_IRQ_rcvd_lock, irq_flags);
	if (part_uv->act_state_req == 0)
		xpc_activate_IRQ_rcvd++;
	part_uv->act_state_req = act_state_req;
	FUNC1(&xpc_activate_IRQ_rcvd_lock, irq_flags);

	FUNC2(&xpc_activate_IRQ_wq);
}
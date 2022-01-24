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
struct ocelot_port {int dummy; } ;
struct flow_block_offload {int /*<<< orphan*/  block; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_block_cb*) ; 
 struct flow_block_cb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocelot_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocelot_setup_tc_block_cb_flower ; 

void FUNC4(struct ocelot_port *port,
					 struct flow_block_offload *f)
{
	struct flow_block_cb *block_cb;

	block_cb = FUNC1(f->block,
					ocelot_setup_tc_block_cb_flower, port);
	if (!block_cb)
		return;

	if (!FUNC0(block_cb)) {
		FUNC2(block_cb, f);
		FUNC3(&block_cb->driver_list);
	}
}
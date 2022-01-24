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
struct ocelot_port_block {int dummy; } ;
struct ocelot_port {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int /*<<< orphan*/  driver_block_list; int /*<<< orphan*/  block; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ; 
 scalar_t__ FUNC0 (struct flow_block_cb*) ; 
 int FUNC1 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 struct flow_block_cb* FUNC3 (int /*<<< orphan*/ ,struct ocelot_port*,struct ocelot_port_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_block_cb*) ; 
 struct flow_block_cb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocelot_port*) ; 
 struct ocelot_port_block* FUNC6 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ocelot_port_block* FUNC8 (struct ocelot_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocelot_port_block*) ; 
 int /*<<< orphan*/  ocelot_setup_tc_block_cb_flower ; 
 int /*<<< orphan*/  ocelot_tc_block_unbind ; 

int FUNC10(struct ocelot_port *port,
				      struct flow_block_offload *f)
{
	struct ocelot_port_block *port_block;
	struct flow_block_cb *block_cb;
	int ret;

	if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS)
		return -EOPNOTSUPP;

	block_cb = FUNC5(f->block,
					ocelot_setup_tc_block_cb_flower, port);
	if (!block_cb) {
		port_block = FUNC8(port);
		if (!port_block)
			return -ENOMEM;

		block_cb = FUNC3(ocelot_setup_tc_block_cb_flower,
					       port, port_block,
					       ocelot_tc_block_unbind);
		if (FUNC0(block_cb)) {
			ret = FUNC1(block_cb);
			goto err_cb_register;
		}
		FUNC2(block_cb, f);
		FUNC7(&block_cb->driver_list, f->driver_block_list);
	} else {
		port_block = FUNC6(block_cb);
	}

	FUNC4(block_cb);
	return 0;

err_cb_register:
	FUNC9(port_block);

	return ret;
}
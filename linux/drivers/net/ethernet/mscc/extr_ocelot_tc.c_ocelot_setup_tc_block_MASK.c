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
struct TYPE_2__ {int /*<<< orphan*/  block_shared; } ;
struct ocelot_port {TYPE_1__ tc; int /*<<< orphan*/  dev; } ;
struct flow_block_offload {int command; scalar_t__ binder_type; int /*<<< orphan*/  block; int /*<<< orphan*/ * driver_block_list; int /*<<< orphan*/  block_shared; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;
typedef  int /*<<< orphan*/  flow_setup_cb_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
#define  FLOW_BLOCK_BIND 129 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ; 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
#define  FLOW_BLOCK_UNBIND 128 
 int /*<<< orphan*/  FUNC0 (struct flow_block_cb*) ; 
 int FUNC1 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 struct flow_block_cb* FUNC3 (int /*<<< orphan*/ *,struct ocelot_port*,struct ocelot_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ocelot_port*,int /*<<< orphan*/ *) ; 
 struct flow_block_cb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ocelot_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct flow_block_cb*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  ocelot_block_cb_list ; 
 int /*<<< orphan*/ * ocelot_setup_tc_block_cb_eg ; 
 int /*<<< orphan*/ * ocelot_setup_tc_block_cb_ig ; 
 int FUNC11 (struct ocelot_port*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocelot_port*,struct flow_block_offload*) ; 

__attribute__((used)) static int FUNC13(struct ocelot_port *port,
				 struct flow_block_offload *f)
{
	struct flow_block_cb *block_cb;
	flow_setup_cb_t *cb;
	int err;

	FUNC10(port->dev, "tc_block command %d, binder_type %d\n",
		   f->command, f->binder_type);

	if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS) {
		cb = ocelot_setup_tc_block_cb_ig;
		port->tc.block_shared = f->block_shared;
	} else if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS) {
		cb = ocelot_setup_tc_block_cb_eg;
	} else {
		return -EOPNOTSUPP;
	}

	f->driver_block_list = &ocelot_block_cb_list;

	switch (f->command) {
	case FLOW_BLOCK_BIND:
		if (FUNC5(cb, port, &ocelot_block_cb_list))
			return -EBUSY;

		block_cb = FUNC3(cb, port, port, NULL);
		if (FUNC0(block_cb))
			return FUNC1(block_cb);

		err = FUNC11(port, f);
		if (err < 0) {
			FUNC4(block_cb);
			return err;
		}
		FUNC2(block_cb, f);
		FUNC8(&block_cb->driver_list, f->driver_block_list);
		return 0;
	case FLOW_BLOCK_UNBIND:
		block_cb = FUNC6(f->block, cb, port);
		if (!block_cb)
			return -ENOENT;

		FUNC12(port, f);
		FUNC7(block_cb, f);
		FUNC9(&block_cb->driver_list);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}
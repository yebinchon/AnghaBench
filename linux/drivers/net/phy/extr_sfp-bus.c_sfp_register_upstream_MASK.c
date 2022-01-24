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
struct sfp_upstream_ops {int dummy; } ;
struct sfp_bus {scalar_t__ sfp; void* upstream; struct sfp_upstream_ops const* upstream_ops; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sfp_bus* FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfp_bus*) ; 
 int FUNC4 (struct sfp_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfp_bus*) ; 

struct sfp_bus *FUNC6(struct fwnode_handle *fwnode,
				      void *upstream,
				      const struct sfp_upstream_ops *ops)
{
	struct sfp_bus *bus = FUNC2(fwnode);
	int ret = 0;

	if (bus) {
		FUNC0();
		bus->upstream_ops = ops;
		bus->upstream = upstream;

		if (bus->sfp) {
			ret = FUNC4(bus);
			if (ret)
				FUNC5(bus);
		}
		FUNC1();
	}

	if (ret) {
		FUNC3(bus);
		bus = NULL;
	}

	return bus;
}
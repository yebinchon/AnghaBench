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
struct sfp_socket_ops {int dummy; } ;
struct sfp_bus {scalar_t__ upstream_ops; struct sfp_socket_ops const* socket_ops; struct sfp* sfp; struct device* sfp_dev; } ;
struct sfp {int dummy; } ;
struct device {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sfp_bus* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sfp_bus*) ; 
 int FUNC4 (struct sfp_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfp_bus*) ; 

struct sfp_bus *FUNC6(struct device *dev, struct sfp *sfp,
				    const struct sfp_socket_ops *ops)
{
	struct sfp_bus *bus = FUNC2(dev->fwnode);
	int ret = 0;

	if (bus) {
		FUNC0();
		bus->sfp_dev = dev;
		bus->sfp = sfp;
		bus->socket_ops = ops;

		if (bus->upstream_ops) {
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
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
struct TYPE_2__ {int id; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct nsim_bus_dev {unsigned int port_count; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nsim_bus_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nsim_bus_dev*) ; 
 struct nsim_bus_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsim_bus ; 
 int /*<<< orphan*/  nsim_bus_dev_ids ; 
 int /*<<< orphan*/  nsim_bus_dev_type ; 

__attribute__((used)) static struct nsim_bus_dev *
FUNC6(unsigned int id, unsigned int port_count)
{
	struct nsim_bus_dev *nsim_bus_dev;
	int err;

	nsim_bus_dev = FUNC5(sizeof(*nsim_bus_dev), GFP_KERNEL);
	if (!nsim_bus_dev)
		return FUNC0(-ENOMEM);

	err = FUNC2(&nsim_bus_dev_ids, id, id, GFP_KERNEL);
	if (err < 0)
		goto err_nsim_bus_dev_free;
	nsim_bus_dev->dev.id = err;
	nsim_bus_dev->dev.bus = &nsim_bus;
	nsim_bus_dev->dev.type = &nsim_bus_dev_type;
	nsim_bus_dev->port_count = port_count;

	err = FUNC1(&nsim_bus_dev->dev);
	if (err)
		goto err_nsim_bus_dev_id_free;
	return nsim_bus_dev;

err_nsim_bus_dev_id_free:
	FUNC3(&nsim_bus_dev_ids, nsim_bus_dev->dev.id);
err_nsim_bus_dev_free:
	FUNC4(nsim_bus_dev);
	return FUNC0(err);
}
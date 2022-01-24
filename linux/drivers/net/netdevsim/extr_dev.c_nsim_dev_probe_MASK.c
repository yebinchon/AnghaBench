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
struct nsim_dev {int /*<<< orphan*/  port_list_lock; } ;
struct nsim_bus_dev {int port_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nsim_dev*) ; 
 int FUNC1 (struct nsim_dev*) ; 
 int FUNC2 (struct nsim_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nsim_dev* FUNC6 (struct nsim_bus_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nsim_dev*) ; 

int FUNC9(struct nsim_bus_dev *nsim_bus_dev)
{
	struct nsim_dev *nsim_dev;
	int i;
	int err;

	nsim_dev = FUNC6(nsim_bus_dev, nsim_bus_dev->port_count);
	if (FUNC0(nsim_dev))
		return FUNC1(nsim_dev);
	FUNC3(&nsim_bus_dev->dev, nsim_dev);

	FUNC4(&nsim_dev->port_list_lock);
	for (i = 0; i < nsim_bus_dev->port_count; i++) {
		err = FUNC2(nsim_dev, i);
		if (err)
			goto err_port_del_all;
	}
	FUNC5(&nsim_dev->port_list_lock);
	return 0;

err_port_del_all:
	FUNC5(&nsim_dev->port_list_lock);
	FUNC8(nsim_dev);
	FUNC7(nsim_dev);
	return err;
}
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
struct nsim_bus_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int FUNC0 (struct nsim_dev*,unsigned int) ; 
 scalar_t__ FUNC1 (struct nsim_dev*,unsigned int) ; 
 struct nsim_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct nsim_bus_dev *nsim_bus_dev,
		      unsigned int port_index)
{
	struct nsim_dev *nsim_dev = FUNC2(&nsim_bus_dev->dev);
	int err;

	FUNC3(&nsim_dev->port_list_lock);
	if (FUNC1(nsim_dev, port_index))
		err = -EEXIST;
	else
		err = FUNC0(nsim_dev, port_index);
	FUNC4(&nsim_dev->port_list_lock);
	return err;
}
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
struct rmnet_port {scalar_t__ nr_rmnet_devs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rmnet_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *real_dev,
					struct rmnet_port *port)
{
	if (port->nr_rmnet_devs)
		return -EINVAL;

	FUNC3(real_dev);

	FUNC1(port);

	/* release reference on real_dev */
	FUNC0(real_dev);

	FUNC2(real_dev, "Removed from rmnet\n");
	return 0;
}
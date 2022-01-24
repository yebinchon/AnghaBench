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
struct TYPE_2__ {int /*<<< orphan*/  num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_active_ports {int /*<<< orphan*/  ports; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_active_ports FUNC2 (struct mlx4_dev*,int) ; 

int FUNC3(struct mlx4_dev *dev, int slave, int port)
{
	unsigned n;
	struct mlx4_active_ports actv_ports = FUNC2(dev, slave);
	unsigned m = FUNC0(actv_ports.ports, dev->caps.num_ports);

	if (port <= 0 || port > m)
		return -EINVAL;

	n = FUNC1(actv_ports.ports, dev->caps.num_ports);
	if (port <= n)
		port = n + 1;

	return port;
}
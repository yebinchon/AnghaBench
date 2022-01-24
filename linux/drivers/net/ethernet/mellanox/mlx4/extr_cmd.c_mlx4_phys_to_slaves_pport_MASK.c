#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx4_slaves_pport {int /*<<< orphan*/  slaves; } ;
struct TYPE_3__ {int num_ports; } ;
struct mlx4_dev {TYPE_2__* persist; TYPE_1__ caps; } ;
struct mlx4_active_ports {int /*<<< orphan*/  ports; } ;
struct TYPE_4__ {int num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_MFUNC_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_active_ports FUNC1 (struct mlx4_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

struct mlx4_slaves_pport FUNC4(struct mlx4_dev *dev,
						   int port)
{
	unsigned i;
	struct mlx4_slaves_pport slaves_pport;

	FUNC0(slaves_pport.slaves, MLX4_MFUNC_MAX);

	if (port <= 0 || port > dev->caps.num_ports)
		return slaves_pport;

	for (i = 0; i < dev->persist->num_vfs + 1; i++) {
		struct mlx4_active_ports actv_ports =
			FUNC1(dev, i);
		if (FUNC3(port - 1, actv_ports.ports))
			FUNC2(i, slaves_pport.slaves);
	}

	return slaves_pport;
}
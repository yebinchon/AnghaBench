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
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RES_OP_RESERVE_AND_MAP 128 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx4_dev*,int,int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev, int slave, int op, int cmd,
			    u64 in_param, u64 *out_param, int in_port)
{
	int port;
	int err = 0;

	switch (op) {
	case RES_OP_RESERVE_AND_MAP:
		port = !in_port ? FUNC1(out_param) : in_port;
		port = FUNC3(
				dev, slave, port);

		if (port < 0)
			return -EINVAL;
		FUNC2(dev, slave, in_param, port);
		FUNC0(dev, port, in_param);
		break;
	default:
		err = -EINVAL;
		break;
	}

	return err;

}
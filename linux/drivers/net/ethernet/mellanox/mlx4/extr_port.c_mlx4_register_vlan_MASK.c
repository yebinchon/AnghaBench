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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLX4_CMD_ALLOC_RES ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int /*<<< orphan*/  RES_OP_RESERVE_AND_MAP ; 
 scalar_t__ RES_VLAN ; 
 int FUNC0 (struct mlx4_dev*,scalar_t__,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx4_dev*) ; 

int FUNC4(struct mlx4_dev *dev, u8 port, u16 vlan, int *index)
{
	u64 out_param = 0;
	int err;

	if (vlan > 4095)
		return -EINVAL;

	if (FUNC3(dev)) {
		err = FUNC2(dev, vlan, &out_param,
				   ((u32) port) << 8 | (u32) RES_VLAN,
				   RES_OP_RESERVE_AND_MAP, MLX4_CMD_ALLOC_RES,
				   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
		if (!err)
			*index = FUNC1(&out_param);

		return err;
	}
	return FUNC0(dev, port, vlan, index);
}
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
 int /*<<< orphan*/  MLX4_CMD_FREE_RES ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int /*<<< orphan*/  RES_OP_RESERVE_AND_MAP ; 
 int /*<<< orphan*/  RES_SRQ ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int) ; 
 scalar_t__ FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct mlx4_dev *dev, int srqn)
{
	u64 in_param = 0;

	if (FUNC2(dev)) {
		FUNC4(&in_param, srqn);
		if (FUNC1(dev, in_param, RES_SRQ, RES_OP_RESERVE_AND_MAP,
			     MLX4_CMD_FREE_RES,
			     MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED))
			FUNC3(dev, "Failed freeing cq:%d\n", srqn);
		return;
	}
	FUNC0(dev, srqn);
}
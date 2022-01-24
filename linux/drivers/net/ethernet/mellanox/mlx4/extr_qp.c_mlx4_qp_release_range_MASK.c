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
 int /*<<< orphan*/  RES_OP_RESERVE ; 
 int /*<<< orphan*/  RES_QP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int,int) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(struct mlx4_dev *dev, int base_qpn, int cnt)
{
	u64 in_param = 0;
	int err;

	if (!cnt)
		return;

	if (FUNC2(dev)) {
		FUNC5(&in_param, base_qpn);
		FUNC4(&in_param, cnt);
		err = FUNC1(dev, in_param, RES_QP, RES_OP_RESERVE,
			       MLX4_CMD_FREE_RES,
			       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
		if (err) {
			FUNC3(dev, "Failed to release qp range base:%d cnt:%d\n",
				  base_qpn, cnt);
		}
	} else
		 FUNC0(dev, base_qpn, cnt);
}
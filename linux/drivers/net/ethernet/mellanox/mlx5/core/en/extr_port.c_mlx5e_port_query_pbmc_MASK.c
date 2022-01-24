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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_REG_PBMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  local_port ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pbmc_reg ; 

int FUNC5(struct mlx5_core_dev *mdev, void *out)
{
	int sz = FUNC1(pbmc_reg);
	void *in;
	int err;

	in = FUNC3(sz, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC0(pbmc_reg, in, local_port, 1);
	err = FUNC4(mdev, in, sz, out, sz, MLX5_REG_PBMC, 0, 0);

	FUNC2(in);
	return err;
}
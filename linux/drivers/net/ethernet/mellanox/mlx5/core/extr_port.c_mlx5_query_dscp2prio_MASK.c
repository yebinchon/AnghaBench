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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5E_SUPPORTED_DSCP ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_REG_QPDPM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dscp ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  local_port ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prio ; 
 int /*<<< orphan*/  qpdpm_dscp_reg ; 
 int /*<<< orphan*/  qpdpm_reg ; 

int FUNC7(struct mlx5_core_dev *mdev, u8 *dscp2prio)
{
	int sz = FUNC3(qpdpm_reg);
	void *qpdpm_dscp;
	void *out;
	void *in;
	int err;
	int i;

	in = FUNC5(sz, GFP_KERNEL);
	out = FUNC5(sz, GFP_KERNEL);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	FUNC2(qpdpm_reg, in, local_port, 1);
	err = FUNC6(mdev, in, sz, out, sz, MLX5_REG_QPDPM, 0, 0);
	if (err)
		goto out;

	for (i = 0; i < (MLX5E_SUPPORTED_DSCP); i++) {
		qpdpm_dscp = FUNC0(qpdpm_reg, out, dscp[i]);
		dscp2prio[i] = FUNC1(qpdpm_dscp_reg, qpdpm_dscp, prio);
	}

out:
	FUNC4(in);
	FUNC4(out);
	return err;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_PTYS_IB ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_link_width_oper ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptys_reg ; 

int FUNC3(struct mlx5_core_dev *dev,
				    u8 *link_width_oper, u8 local_port)
{
	u32 out[FUNC1(ptys_reg)];
	int err;

	err = FUNC2(dev, out, sizeof(out), MLX5_PTYS_IB, local_port);
	if (err)
		return err;

	*link_width_oper = FUNC0(ptys_reg, out, ib_link_width_oper);

	return 0;
}
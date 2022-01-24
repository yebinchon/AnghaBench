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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvlc_reg ; 

int FUNC3(struct mlx5_core_dev *dev,
			      u8 *vl_hw_cap, u8 local_port)
{
	u32 out[FUNC1(pvlc_reg)];
	int err;

	err = FUNC2(dev, out, sizeof(out), local_port);
	if (err)
		return err;

	*vl_hw_cap = FUNC0(pvlc_reg, out, vl_hw_cap);

	return 0;
}
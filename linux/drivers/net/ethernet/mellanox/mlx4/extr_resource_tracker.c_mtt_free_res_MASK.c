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
 int /*<<< orphan*/  RES_MTT ; 
 int RES_OP_RESERVE_AND_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mlx4_dev *dev, int slave, int op, int cmd,
			u64 in_param, u64 *out_param)
{
	int err = -EINVAL;
	int base;
	int order;

	if (op != RES_OP_RESERVE_AND_MAP)
		return err;

	base = FUNC2(&in_param);
	order = FUNC1(&in_param);
	err = FUNC4(dev, slave, base, 1, RES_MTT, order);
	if (!err) {
		FUNC3(dev, slave, RES_MTT, 1 << order, 0);
		FUNC0(dev, base, order);
	}
	return err;
}
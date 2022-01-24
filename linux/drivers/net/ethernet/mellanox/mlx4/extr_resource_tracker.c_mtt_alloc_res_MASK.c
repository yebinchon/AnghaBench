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
 int ENOMEM ; 
 int /*<<< orphan*/  RES_MTT ; 
 int RES_OP_RESERVE_AND_MAP ; 
 int FUNC0 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,int) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct mlx4_dev *dev, int slave, int op, int cmd,
			 u64 in_param, u64 *out_param)
{
	int err = -EINVAL;
	int base;
	int order;

	if (op != RES_OP_RESERVE_AND_MAP)
		return err;

	order = FUNC3(&in_param);

	err = FUNC4(dev, slave, RES_MTT, 1 << order, 0);
	if (err)
		return err;

	base = FUNC0(dev, order);
	if (base == -1) {
		FUNC5(dev, slave, RES_MTT, 1 << order, 0);
		return -ENOMEM;
	}

	err = FUNC2(dev, slave, base, 1, RES_MTT, order);
	if (err) {
		FUNC5(dev, slave, RES_MTT, 1 << order, 0);
		FUNC1(dev, base, order);
	} else {
		FUNC6(out_param, base);
	}

	return err;
}
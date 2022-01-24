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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_COUNTER ; 
 int RES_OP_RESERVE ; 
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlx4_dev *dev, int slave, int op, int cmd,
			     u64 in_param, u64 *out_param, int port)
{
	u32 index;
	int err;

	if (op != RES_OP_RESERVE)
		return -EINVAL;

	err = FUNC3(dev, slave, RES_COUNTER, 1, 0);
	if (err)
		return err;

	err = FUNC0(dev, &index);
	if (err) {
		FUNC4(dev, slave, RES_COUNTER, 1, 0);
		return err;
	}

	err = FUNC2(dev, slave, index, 1, RES_COUNTER, port);
	if (err) {
		FUNC1(dev, index);
		FUNC4(dev, slave, RES_COUNTER, 1, 0);
	} else {
		FUNC5(out_param, index);
	}

	return err;
}
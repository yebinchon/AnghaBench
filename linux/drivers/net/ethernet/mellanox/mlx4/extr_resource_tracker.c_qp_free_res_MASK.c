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
#define  RES_OP_MAP_ICM 129 
#define  RES_OP_RESERVE 128 
 int /*<<< orphan*/  RES_QP ; 
 int /*<<< orphan*/  RES_QP_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int,int) ; 

__attribute__((used)) static int FUNC10(struct mlx4_dev *dev, int slave, int op, int cmd,
		       u64 in_param)
{
	int err;
	int count;
	int base;
	int qpn;

	switch (op) {
	case RES_OP_RESERVE:
		base = FUNC4(&in_param) & 0x7fffff;
		count = FUNC3(&in_param);
		err = FUNC7(dev, slave, base, count, RES_QP, 0);
		if (err)
			break;
		FUNC5(dev, slave, RES_QP, count, 0);
		FUNC1(dev, base, count);
		break;
	case RES_OP_MAP_ICM:
		qpn = FUNC4(&in_param) & 0x7fffff;
		err = FUNC6(dev, slave, qpn, RES_QP_RESERVED,
					   NULL, 0);
		if (err)
			return err;

		if (!FUNC2(dev, qpn))
			FUNC0(dev, qpn);

		FUNC8(dev, slave, RES_QP, qpn);

		if (FUNC9(dev, slave, qpn))
			err = FUNC7(dev, slave, qpn, 1, RES_QP, 0);
		break;
	default:
		err = -EINVAL;
		break;
	}
	return err;
}
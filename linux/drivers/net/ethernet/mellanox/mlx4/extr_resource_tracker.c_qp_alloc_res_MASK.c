#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int alloc_res_qp_mask; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RES_OP_MAP_ICM 129 
#define  RES_OP_RESERVE 128 
 int /*<<< orphan*/  RES_QP ; 
 int /*<<< orphan*/  RES_QP_MAPPED ; 
 int FUNC0 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,int) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int*,int) ; 
 int FUNC3 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*,int,int) ; 

__attribute__((used)) static int FUNC14(struct mlx4_dev *dev, int slave, int op, int cmd,
			u64 in_param, u64 *out_param)
{
	int err;
	int count;
	int align;
	int base;
	int qpn;
	u8 flags;

	switch (op) {
	case RES_OP_RESERVE:
		count = FUNC6(&in_param) & 0xffffff;
		/* Turn off all unsupported QP allocation flags that the
		 * slave tries to set.
		 */
		flags = (FUNC6(&in_param) >> 24) & dev->caps.alloc_res_qp_mask;
		align = FUNC5(&in_param);
		err = FUNC7(dev, slave, RES_QP, count, 0);
		if (err)
			return err;

		err = FUNC2(dev, count, align, &base, flags);
		if (err) {
			FUNC8(dev, slave, RES_QP, count, 0);
			return err;
		}

		err = FUNC3(dev, slave, base, count, RES_QP, 0);
		if (err) {
			FUNC8(dev, slave, RES_QP, count, 0);
			FUNC1(dev, base, count);
			return err;
		}
		FUNC12(out_param, base);
		break;
	case RES_OP_MAP_ICM:
		qpn = FUNC6(&in_param) & 0x7fffff;
		if (FUNC13(dev, slave, qpn)) {
			err = FUNC3(dev, slave, qpn, 1, RES_QP, 0);
			if (err)
				return err;
		}

		err = FUNC9(dev, slave, qpn, RES_QP_MAPPED,
					   NULL, 1);
		if (err)
			return err;

		if (!FUNC4(dev, qpn)) {
			err = FUNC0(dev, qpn);
			if (err) {
				FUNC10(dev, slave, RES_QP, qpn);
				return err;
			}
		}

		FUNC11(dev, slave, RES_QP, qpn);
		break;

	default:
		err = -EINVAL;
		break;
	}
	return err;
}
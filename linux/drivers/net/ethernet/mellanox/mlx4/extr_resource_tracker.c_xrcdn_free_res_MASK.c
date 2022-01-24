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
 int RES_OP_RESERVE ; 
 int /*<<< orphan*/  RES_XRCD ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlx4_dev *dev, int slave, int op, int cmd,
			  u64 in_param, u64 *out_param)
{
	int xrcdn;
	int err;

	if (op != RES_OP_RESERVE)
		return -EINVAL;

	xrcdn = FUNC1(&in_param);
	err = FUNC2(dev, slave, xrcdn, 1, RES_XRCD, 0);
	if (err)
		return err;

	FUNC0(dev, xrcdn);

	return err;
}
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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VSC_ADDR_BIT_LEN ; 
 int /*<<< orphan*/  VSC_ADDR_BIT_OFFS ; 
 int /*<<< orphan*/  VSC_ADDR_OFFSET ; 
 int /*<<< orphan*/  VSC_CTRL_OFFSET ; 
 int /*<<< orphan*/  VSC_SIZE_VLD_BIT_LEN ; 
 int /*<<< orphan*/  VSC_SIZE_VLD_BIT_OFFS ; 
 int /*<<< orphan*/  VSC_SPACE_BIT_LEN ; 
 int /*<<< orphan*/  VSC_SPACE_BIT_OFFS ; 
 int /*<<< orphan*/  VSC_STATUS_BIT_LEN ; 
 int /*<<< orphan*/  VSC_STATUS_BIT_OFFS ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct mlx5_core_dev *dev, u16 space,
			  u32 *ret_space_size)
{
	int ret;
	u32 val = 0;

	if (!FUNC3(dev))
		return -EINVAL;

	if (ret_space_size)
		*ret_space_size = 0;

	/* Get a unique val */
	ret = FUNC4(dev, VSC_CTRL_OFFSET, &val);
	if (ret)
		goto out;

	/* Try to modify the lock */
	val = FUNC1(val, space, VSC_SPACE_BIT_OFFS, VSC_SPACE_BIT_LEN);
	ret = FUNC5(dev, VSC_CTRL_OFFSET, val);
	if (ret)
		goto out;

	/* Verify lock was modified */
	ret = FUNC4(dev, VSC_CTRL_OFFSET, &val);
	if (ret)
		goto out;

	if (FUNC0(val, VSC_STATUS_BIT_OFFS, VSC_STATUS_BIT_LEN) == 0)
		return -EINVAL;

	/* Get space max address if indicated by size valid bit */
	if (ret_space_size &&
	    FUNC0(val, VSC_SIZE_VLD_BIT_OFFS, VSC_SIZE_VLD_BIT_LEN)) {
		ret = FUNC4(dev, VSC_ADDR_OFFSET, &val);
		if (ret) {
			FUNC2(dev, "Failed to get max space size\n");
			goto out;
		}
		*ret_space_size = FUNC0(val, VSC_ADDR_BIT_OFFS,
					       VSC_ADDR_BIT_LEN);
	}
	return 0;

out:
	return ret;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  VSC_ADDR_OFFSET ; 
 int /*<<< orphan*/  VSC_DATA_OFFSET ; 
 scalar_t__ VSC_FLAG_BIT_LEN ; 
 scalar_t__ VSC_SYND_BIT_LEN ; 
 int /*<<< orphan*/  VSC_SYND_BIT_OFFS ; 
 int FUNC1 (struct mlx5_core_dev*,int) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *dev, unsigned int address,
			    u32 *data)
{
	int ret;

	if (FUNC0(address, VSC_SYND_BIT_OFFS,
			 VSC_FLAG_BIT_LEN + VSC_SYND_BIT_LEN))
		return -EINVAL;

	ret = FUNC3(dev, VSC_ADDR_OFFSET, address);
	if (ret)
		goto out;

	ret = FUNC1(dev, 1);
	if (ret)
		goto out;

	ret = FUNC2(dev, VSC_DATA_OFFSET, data);
out:
	return ret;
}
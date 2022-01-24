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
typedef  unsigned int u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC1 (unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VSC_ADDR_OFFSET ; 
 int /*<<< orphan*/  VSC_DATA_OFFSET ; 
 scalar_t__ VSC_FLAG_BIT_LEN ; 
 int /*<<< orphan*/  VSC_FLAG_BIT_OFFS ; 
 scalar_t__ VSC_SYND_BIT_LEN ; 
 int /*<<< orphan*/  VSC_SYND_BIT_OFFS ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *dev, unsigned int address,
			     u32 data)
{
	int ret;

	if (FUNC0(address, VSC_SYND_BIT_OFFS,
			 VSC_FLAG_BIT_LEN + VSC_SYND_BIT_LEN))
		return -EINVAL;

	/* Set flag to 0x1 */
	address = FUNC1(address, 1, VSC_FLAG_BIT_OFFS, 1);
	ret = FUNC3(dev, VSC_DATA_OFFSET, data);
	if (ret)
		goto out;

	ret = FUNC3(dev, VSC_ADDR_OFFSET, address);
	if (ret)
		goto out;

	/* Wait for the flag to be cleared */
	ret = FUNC2(dev, 0);

out:
	return ret;
}
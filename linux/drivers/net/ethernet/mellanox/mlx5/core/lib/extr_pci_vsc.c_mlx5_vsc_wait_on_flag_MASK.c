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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VSC_ADDR_OFFSET ; 
 int /*<<< orphan*/  VSC_FLAG_BIT_LEN ; 
 int /*<<< orphan*/  VSC_FLAG_BIT_OFFS ; 
 int VSC_MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct mlx5_core_dev *dev, u8 expected_val)
{
	int retries = 0;
	u32 flag;
	int ret;

	do {
		if (retries > VSC_MAX_RETRIES)
			return -EBUSY;

		ret = FUNC2(dev, VSC_ADDR_OFFSET, &flag);
		if (ret)
			return ret;
		flag = FUNC0(flag, VSC_FLAG_BIT_OFFS, VSC_FLAG_BIT_LEN);
		retries++;

		if ((retries & 0xf) == 0)
			FUNC1(1000, 2000);

	} while (flag != expected_val);

	return 0;
}
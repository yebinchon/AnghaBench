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
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx4_dev*) ; 
 int FUNC1 (struct mlx4_dev*) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev)
{
	int ret, ret1;

	ret = FUNC0(dev);
	if (ret)
		FUNC3(dev, "multifunction unbond for flow rules failed (%d)\n", ret);
	ret1 = FUNC1(dev);
	if (ret1) {
		FUNC3(dev, "multifunction unbond for MAC table failed (%d)\n", ret1);
		ret = ret1;
	}
	ret1 = FUNC2(dev);
	if (ret1) {
		FUNC3(dev, "multifunction unbond for VLAN table failed (%d)\n", ret1);
		ret = ret1;
	}
	return ret;
}
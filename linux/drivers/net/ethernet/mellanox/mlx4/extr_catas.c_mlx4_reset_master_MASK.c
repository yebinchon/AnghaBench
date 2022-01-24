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
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*) ; 
 scalar_t__ FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx4_dev*) ; 

__attribute__((used)) static int FUNC6(struct mlx4_dev *dev)
{
	int err = 0;

	if (FUNC1(dev))
		FUNC2(dev);

	if (!FUNC4(dev->persist->pdev)) {
		err = FUNC5(dev);
		/* If PCI can't be accessed to read vendor ID we assume that its
		 * link was disabled and chip was already reset.
		 */
		if (err)
			return 0;

		err = FUNC3(dev);
		if (err)
			FUNC0(dev, "Fail to reset HCA\n");
	}

	return err;
}
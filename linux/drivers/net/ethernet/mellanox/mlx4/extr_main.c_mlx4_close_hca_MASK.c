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
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*) ; 

__attribute__((used)) static void FUNC6(struct mlx4_dev *dev)
{
	FUNC5(dev);
	FUNC4(dev);
	if (FUNC2(dev))
		FUNC3(dev);
	else {
		FUNC0(dev, 0);
		FUNC1(dev);
	}
}
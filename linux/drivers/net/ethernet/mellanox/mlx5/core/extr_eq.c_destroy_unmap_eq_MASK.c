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
struct mlx5_eq {int /*<<< orphan*/  buf; int /*<<< orphan*/  irqn; int /*<<< orphan*/  eqn; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,struct mlx5_eq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
	int err;

	FUNC3(dev, eq);

	err = FUNC1(dev, eq->eqn);
	if (err)
		FUNC2(dev, "failed to destroy a previously created eq: eqn %d\n",
			       eq->eqn);
	FUNC4(eq->irqn);

	FUNC0(dev, &eq->buf);

	return err;
}
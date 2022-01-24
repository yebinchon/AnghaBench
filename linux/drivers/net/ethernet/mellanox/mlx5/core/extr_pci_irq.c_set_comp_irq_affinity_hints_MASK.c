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
struct TYPE_2__ {int /*<<< orphan*/  irq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct mlx5_core_dev *mdev)
{
	int nvec = FUNC1(mdev->priv.irq_table);
	int err;
	int i;

	for (i = 0; i < nvec; i++) {
		err = FUNC2(mdev, i);
		if (err)
			goto err_out;
	}

	return 0;

err_out:
	for (i--; i >= 0; i--)
		FUNC0(mdev, i);

	return err;
}
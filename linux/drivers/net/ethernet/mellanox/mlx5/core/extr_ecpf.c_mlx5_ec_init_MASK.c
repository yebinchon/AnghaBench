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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 

int FUNC2(struct mlx5_core_dev *dev)
{
	int err = 0;

	if (!FUNC0(dev))
		return 0;

	/* ECPF shall enable HCA for peer PF in the same way a PF
	 * does this for its VFs.
	 */
	err = FUNC1(dev);
	if (err)
		return err;

	return 0;
}
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
struct mlx5_hv_vhca {int /*<<< orphan*/  agents_lock; struct mlx5_core_dev* dev; int /*<<< orphan*/  work_queue; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_hv_vhca* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_hv_vhca*) ; 
 struct mlx5_hv_vhca* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct mlx5_hv_vhca *FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_hv_vhca *hv_vhca = NULL;

	hv_vhca = FUNC3(sizeof(*hv_vhca), GFP_KERNEL);
	if (!hv_vhca)
		return FUNC0(-ENOMEM);

	hv_vhca->work_queue = FUNC1("mlx5_hv_vhca");
	if (!hv_vhca->work_queue) {
		FUNC2(hv_vhca);
		return FUNC0(-ENOMEM);
	}

	hv_vhca->dev = dev;
	FUNC4(&hv_vhca->agents_lock);

	return hv_vhca;
}
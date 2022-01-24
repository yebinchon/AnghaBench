#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_core_sriov {TYPE_1__* vfs_ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  vfs_pages; int /*<<< orphan*/  eswitch; struct mlx5_core_sriov sriov; } ;
struct mlx5_core_dev {TYPE_2__ priv; int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 int FUNC1 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx5_core_dev *dev)
{
	struct mlx5_core_sriov *sriov = &dev->priv.sriov;
	int num_vfs = FUNC5(dev->pdev);
	int err;
	int vf;

	for (vf = num_vfs - 1; vf >= 0; vf--) {
		if (!sriov->vfs_ctx[vf].enabled)
			continue;
		err = FUNC1(dev, vf + 1);
		if (err) {
			FUNC2(dev, "failed to disable VF %d\n", vf);
			continue;
		}
		sriov->vfs_ctx[vf].enabled = 0;
	}

	if (FUNC0(dev))
		FUNC3(dev->priv.eswitch);

	if (FUNC4(dev, &dev->priv.vfs_pages))
		FUNC2(dev, "timeout reclaiming VFs pages\n");
}
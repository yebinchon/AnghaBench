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
struct TYPE_4__ {int /*<<< orphan*/  eswitch; struct mlx5_core_sriov sriov; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_3__ {int enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_IB ; 
 int /*<<< orphan*/  MLX5_ESWITCH_LEGACY ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC3 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  port_type ; 
 int FUNC7 (struct mlx5_core_dev*,int) ; 

__attribute__((used)) static int FUNC8(struct mlx5_core_dev *dev, int num_vfs)
{
	struct mlx5_core_sriov *sriov = &dev->priv.sriov;
	int err;
	int vf;

	if (!FUNC1(dev))
		goto enable_vfs_hca;

	FUNC6(dev->priv.eswitch, num_vfs);
	err = FUNC5(dev->priv.eswitch, MLX5_ESWITCH_LEGACY);
	if (err) {
		FUNC4(dev,
			       "failed to enable eswitch SRIOV (%d)\n", err);
		return err;
	}

enable_vfs_hca:
	for (vf = 0; vf < num_vfs; vf++) {
		err = FUNC3(dev, vf + 1);
		if (err) {
			FUNC4(dev, "failed to enable VF %d (%d)\n", vf, err);
			continue;
		}
		sriov->vfs_ctx[vf].enabled = 1;
		if (FUNC0(dev, port_type) == MLX5_CAP_PORT_TYPE_IB) {
			err = FUNC7(dev, vf);
			if (err) {
				FUNC4(dev,
					       "failed to restore VF %d settings, err %d\n",
					       vf, err);
				continue;
			}
		}
		FUNC2(dev, "successfully enabled VF* %d\n", vf);
	}

	return 0;
}
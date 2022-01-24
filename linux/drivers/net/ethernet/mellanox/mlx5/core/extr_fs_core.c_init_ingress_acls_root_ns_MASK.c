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
struct mlx5_flow_steering {int /*<<< orphan*/ * esw_ingress_root_ns; } ;
struct TYPE_2__ {struct mlx5_flow_steering* steering; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_flow_steering*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_flow_steering *steering = dev->priv.steering;
	int total_vports = FUNC4(dev);
	int err;
	int i;

	steering->esw_ingress_root_ns =
			FUNC2(total_vports,
				sizeof(*steering->esw_ingress_root_ns),
				GFP_KERNEL);
	if (!steering->esw_ingress_root_ns)
		return -ENOMEM;

	for (i = 0; i < total_vports; i++) {
		err = FUNC1(steering, i);
		if (err)
			goto cleanup_root_ns;
	}

	return 0;

cleanup_root_ns:
	for (i--; i >= 0; i--)
		FUNC0(steering->esw_ingress_root_ns[i]);
	FUNC3(steering->esw_ingress_root_ns);
	steering->esw_ingress_root_ns = NULL;
	return err;
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *dev)
{
	struct mlx5_flow_steering *steering = dev->priv.steering;
	int i;

	if (!steering->esw_ingress_root_ns)
		return;

	for (i = 0; i < FUNC2(dev); i++)
		FUNC0(steering->esw_ingress_root_ns[i]);

	FUNC1(steering->esw_ingress_root_ns);
	steering->esw_ingress_root_ns = NULL;
}
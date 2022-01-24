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
struct TYPE_3__ {int /*<<< orphan*/ * drop_counter; } ;
struct TYPE_4__ {int /*<<< orphan*/ * drop_counter; } ;
struct mlx5_vport {TYPE_1__ egress; int /*<<< orphan*/  vport; TYPE_2__ ingress; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flow_counter ; 
 void* FUNC4 (struct mlx5_core_dev*,int) ; 

__attribute__((used)) static void FUNC5(struct mlx5_vport *vport)
{
	struct mlx5_core_dev *dev = vport->dev;

	if (FUNC2(dev, flow_counter)) {
		vport->ingress.drop_counter = FUNC4(dev, false);
		if (FUNC0(vport->ingress.drop_counter)) {
			FUNC3(dev,
				 "vport[%d] configure ingress drop rule counter failed\n",
				 vport->vport);
			vport->ingress.drop_counter = NULL;
		}
	}

	if (FUNC1(dev, flow_counter)) {
		vport->egress.drop_counter = FUNC4(dev, false);
		if (FUNC0(vport->egress.drop_counter)) {
			FUNC3(dev,
				 "vport[%d] configure egress drop rule counter failed\n",
				 vport->vport);
			vport->egress.drop_counter = NULL;
		}
	}
}
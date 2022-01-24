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
struct mlx5_eswitch {TYPE_2__* dev; } ;
struct mlx5_devcom {int dummy; } ;
struct TYPE_3__ {struct mlx5_devcom* devcom; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESW_OFFLOADS_DEVCOM_UNPAIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_DEVCOM_ESW_OFFLOADS ; 
 int /*<<< orphan*/  merged_eswitch ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_devcom*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_devcom*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx5_eswitch *esw)
{
	struct mlx5_devcom *devcom = esw->dev->priv.devcom;

	if (!FUNC0(esw->dev, merged_eswitch))
		return;

	FUNC1(devcom, MLX5_DEVCOM_ESW_OFFLOADS,
			       ESW_OFFLOADS_DEVCOM_UNPAIR, esw);

	FUNC2(devcom, MLX5_DEVCOM_ESW_OFFLOADS);
}
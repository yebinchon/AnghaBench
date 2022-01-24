#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  peer_mutex; int /*<<< orphan*/  peer_flows; } ;
struct mlx5_eswitch {TYPE_3__* dev; TYPE_2__ offloads; } ;
struct mlx5_devcom {int dummy; } ;
struct TYPE_4__ {struct mlx5_devcom* devcom; } ;
struct TYPE_6__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESW_OFFLOADS_DEVCOM_PAIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_DEVCOM_ESW_OFFLOADS ; 
 int /*<<< orphan*/  merged_eswitch ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_devcom*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_devcom*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  mlx5_esw_offloads_devcom_event ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5_eswitch *esw)
{
	struct mlx5_devcom *devcom = esw->dev->priv.devcom;

	FUNC0(&esw->offloads.peer_flows);
	FUNC4(&esw->offloads.peer_mutex);

	if (!FUNC1(esw->dev, merged_eswitch))
		return;

	FUNC2(devcom,
				       MLX5_DEVCOM_ESW_OFFLOADS,
				       mlx5_esw_offloads_devcom_event,
				       esw);

	FUNC3(devcom,
			       MLX5_DEVCOM_ESW_OFFLOADS,
			       ESW_OFFLOADS_DEVCOM_PAIR, esw);
}
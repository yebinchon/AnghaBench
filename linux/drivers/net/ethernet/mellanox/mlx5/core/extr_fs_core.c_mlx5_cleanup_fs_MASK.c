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
struct mlx5_flow_steering {int /*<<< orphan*/  fgs_cache; int /*<<< orphan*/  ftes_cache; int /*<<< orphan*/ * egress_root_ns; int /*<<< orphan*/ * rdma_rx_root_ns; int /*<<< orphan*/ * sniffer_tx_root_ns; int /*<<< orphan*/ * sniffer_rx_root_ns; struct mlx5_flow_steering* fdb_sub_ns; int /*<<< orphan*/ * fdb_root_ns; int /*<<< orphan*/ * root_ns; } ;
struct TYPE_2__ {struct mlx5_flow_steering* steering; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_flow_steering*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 

void FUNC6(struct mlx5_core_dev *dev)
{
	struct mlx5_flow_steering *steering = dev->priv.steering;

	FUNC2(steering->root_ns);
	FUNC0(dev);
	FUNC1(dev);
	FUNC2(steering->fdb_root_ns);
	steering->fdb_root_ns = NULL;
	FUNC3(steering->fdb_sub_ns);
	steering->fdb_sub_ns = NULL;
	FUNC2(steering->sniffer_rx_root_ns);
	FUNC2(steering->sniffer_tx_root_ns);
	FUNC2(steering->rdma_rx_root_ns);
	FUNC2(steering->egress_root_ns);
	FUNC5(dev);
	FUNC4(steering->ftes_cache);
	FUNC4(steering->fgs_cache);
	FUNC3(steering);
}
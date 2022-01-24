#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_steering {TYPE_2__* rdma_rx_root_ns; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct TYPE_6__ {TYPE_1__ ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FS_FT_RDMA_RX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (struct mlx5_flow_steering*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_flow_steering*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdma_rx_root_fs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct mlx5_flow_steering *steering)
{
	int err;

	steering->rdma_rx_root_ns = FUNC1(steering, FS_FT_RDMA_RX);
	if (!steering->rdma_rx_root_ns)
		return -ENOMEM;

	err = FUNC2(steering, &rdma_rx_root_fs,
			     &steering->rdma_rx_root_ns->ns.node);
	if (err)
		goto out_err;

	FUNC3(steering->rdma_rx_root_ns);

	return 0;

out_err:
	FUNC0(steering->rdma_rx_root_ns);
	steering->rdma_rx_root_ns = NULL;
	return err;
}
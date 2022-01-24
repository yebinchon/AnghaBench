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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_fpga_tls {int /*<<< orphan*/  rx_idr_spinlock; int /*<<< orphan*/  rx_idr; int /*<<< orphan*/  tx_idr_spinlock; int /*<<< orphan*/  tx_idr; } ;
struct mlx5_core_dev {TYPE_1__* fpga; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct mlx5_fpga_tls* tls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct mlx5_core_dev *mdev, u32 swid,
			    gfp_t flags, bool direction_sx)
{
	struct mlx5_fpga_tls *tls = mdev->fpga->tls;
	void *flow;

	if (direction_sx)
		flow = FUNC1(&tls->tx_idr,
						  &tls->tx_idr_spinlock,
						  swid);
	else
		flow = FUNC1(&tls->rx_idr,
						  &tls->rx_idr_spinlock,
						  swid);

	if (!flow) {
		FUNC0(mdev->fpga, "No flow information for swid %u\n",
			      swid);
		return;
	}

	FUNC3(); /* before kfree(flow) */
	FUNC2(mdev, flow, swid, flags);
}
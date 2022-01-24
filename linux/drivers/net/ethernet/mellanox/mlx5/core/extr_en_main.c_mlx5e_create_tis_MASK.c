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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int tdn; } ;
struct TYPE_4__ {int pdn; TYPE_1__ td; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_tis_in ; 
 int /*<<< orphan*/  ctx ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  strict_lag_tx_port_affinity ; 
 int /*<<< orphan*/  tls_en ; 
 int /*<<< orphan*/  transport_domain ; 

int FUNC6(struct mlx5_core_dev *mdev, void *in, u32 *tisn)
{
	void *tisc = FUNC0(create_tis_in, in, ctx);

	FUNC2(tisc, tisc, transport_domain, mdev->mlx5e_res.td.tdn);

	if (FUNC1(tisc, tisc, tls_en))
		FUNC2(tisc, tisc, pd, mdev->mlx5e_res.pdn);

	if (FUNC5(mdev))
		FUNC2(tisc, tisc, strict_lag_tx_port_affinity, 1);

	return FUNC4(mdev, in, FUNC3(create_tis_in), tisn);
}
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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tc_tsa; } ;
struct mlx5e_priv {TYPE_1__ dcbx; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ieee_ets {int ets_cap; scalar_t__* tc_tx_bw; int /*<<< orphan*/  tc_tsa; int /*<<< orphan*/ * prio_tc; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  IEEE_8021QAZ_TSA_ETS ; 
 int /*<<< orphan*/  IEEE_8021QAZ_TSA_VENDOR ; 
 int MLX5E_LOWEST_PRIO_GROUP ; 
 scalar_t__ MLX5E_MAX_BW_ALLOC ; 
 int MLX5E_VENDOR_TC_GROUP_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,struct ieee_ets*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5_core_dev*,int,scalar_t__*) ; 
 int FUNC5 (struct mlx5_core_dev*,int,int*) ; 
 struct mlx5e_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev,
				   struct ieee_ets *ets)
{
	struct mlx5e_priv *priv = FUNC6(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;
	u8 tc_group[IEEE_8021QAZ_MAX_TCS];
	bool is_tc_group_6_exist = false;
	bool is_zero_bw_ets_tc = false;
	int err = 0;
	int i;

	if (!FUNC0(priv->mdev, ets))
		return -EOPNOTSUPP;

	ets->ets_cap = FUNC2(priv->mdev) + 1;
	for (i = 0; i < ets->ets_cap; i++) {
		err = FUNC3(mdev, i, &ets->prio_tc[i]);
		if (err)
			return err;

		err = FUNC5(mdev, i, &tc_group[i]);
		if (err)
			return err;

		err = FUNC4(mdev, i, &ets->tc_tx_bw[i]);
		if (err)
			return err;

		if (ets->tc_tx_bw[i] < MLX5E_MAX_BW_ALLOC &&
		    tc_group[i] == (MLX5E_LOWEST_PRIO_GROUP + 1))
			is_zero_bw_ets_tc = true;

		if (tc_group[i] == (MLX5E_VENDOR_TC_GROUP_NUM - 1))
			is_tc_group_6_exist = true;
	}

	/* Report 0% ets tc if exits*/
	if (is_zero_bw_ets_tc) {
		for (i = 0; i < ets->ets_cap; i++)
			if (tc_group[i] == MLX5E_LOWEST_PRIO_GROUP)
				ets->tc_tx_bw[i] = 0;
	}

	/* Update tc_tsa based on fw setting*/
	for (i = 0; i < ets->ets_cap; i++) {
		if (ets->tc_tx_bw[i] < MLX5E_MAX_BW_ALLOC)
			priv->dcbx.tc_tsa[i] = IEEE_8021QAZ_TSA_ETS;
		else if (tc_group[i] == MLX5E_VENDOR_TC_GROUP_NUM &&
			 !is_tc_group_6_exist)
			priv->dcbx.tc_tsa[i] = IEEE_8021QAZ_TSA_VENDOR;
	}
	FUNC1(ets->tc_tsa, priv->dcbx.tc_tsa, sizeof(ets->tc_tsa));

	return err;
}
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
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cable_len; } ;
struct mlx5e_pport_stats {int dummy; } ;
struct TYPE_3__ {struct mlx5e_pport_stats pport; } ;
struct mlx5e_priv {TYPE_2__ dcbx; TYPE_1__ stats; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ieee_pfc {int /*<<< orphan*/  pfc_en; int /*<<< orphan*/  delay; void** indications; void** requests; scalar_t__ pfc_cap; } ;

/* Variables and functions */
 int IEEE_8021QAZ_MAX_TCS ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 void* FUNC1 (struct mlx5e_pport_stats*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  rx_pause ; 
 int /*<<< orphan*/  tx_pause ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				   struct ieee_pfc *pfc)
{
	struct mlx5e_priv *priv = FUNC4(dev);
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_pport_stats *pstats = &priv->stats.pport;
	int i;

	pfc->pfc_cap = FUNC2(mdev) + 1;
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		pfc->requests[i]    = FUNC1(pstats, i, tx_pause);
		pfc->indications[i] = FUNC1(pstats, i, rx_pause);
	}

	if (FUNC0(mdev))
		pfc->delay = priv->dcbx.cable_len;

	return FUNC3(mdev, &pfc->pfc_en, NULL);
}